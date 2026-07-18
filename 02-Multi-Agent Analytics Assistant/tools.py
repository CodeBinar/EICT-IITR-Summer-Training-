"""
analytics_mcp_server
A minimal local server exposing reusable analytics tools over HTTP.
Run with: python mcp_server.py   (serves on http://localhost:8000)
"""

import json
import os
from http.server import BaseHTTPRequestHandler, HTTPServer

import pandas as pd

SAMPLE_DATA_DIR = os.path.join(os.path.dirname(__file__), "sample_data")


def mcp_profile_csv(file_name: str) -> dict:
    path = os.path.join(SAMPLE_DATA_DIR, os.path.basename(file_name))
    if not os.path.exists(path):
        return {"error": f"File not found in sample_data: {file_name}"}

    df = pd.read_csv(path)
    return {
        "rows": len(df),
        "columns": len(df.columns),
        "column_names": list(df.columns),
        "missing_values": df.isnull().sum().to_dict(),
        "duplicate_rows": int(df.duplicated().sum()),
        "sample_rows": df.head(3).to_dict(orient="records"),
    }


def mcp_generate_kpi_catalog(domain: str, columns: list) -> dict:
    base_kpis = {
        "revenue": "Total Revenue",
        "order": "Total Orders",
        "customer": "Active Customers",
        "churn": "Churn Rate",
        "date": "Trend Over Time",
    }
    kpis = [name for key, name in base_kpis.items()
            if any(key in c.lower() for c in columns)]
    if not kpis:
        kpis = ["Row Count", "Data Completeness %"]
    return {"domain": domain, "recommended_kpis": kpis}


TOOLS = {
    "mcp_profile_csv": mcp_profile_csv,
    "mcp_generate_kpi_catalog": mcp_generate_kpi_catalog,
}


class MCPHandler(BaseHTTPRequestHandler):
    def do_POST(self):
        tool_name = self.path.strip("/")
        length = int(self.headers.get("Content-Length", 0))
        payload = json.loads(self.rfile.read(length) or b"{}")

        tool = TOOLS.get(tool_name)
        if not tool:
            result = {"error": f"Unknown tool: {tool_name}"}
        else:
            try:
                result = tool(**payload)
            except Exception as e:
                result = {"error": str(e)}

        body = json.dumps(result).encode("utf-8")
        self.send_response(200)
        self.send_header("Content-Type", "application/json")
        self.end_headers()
        self.wfile.write(body)

    def log_message(self, format, *args):
        pass  # keep console clean


if __name__ == "__main__":
    print("analytics_mcp_server running on http://localhost:8000")
    print("Tools available:", list(TOOLS.keys()))
    HTTPServer(("localhost", 8000), MCPHandler).serve_forever()
