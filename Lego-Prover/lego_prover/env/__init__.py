# Workaround to wrong version of sqlite3 https://github.com/chroma-core/chroma/issues/1985
__import__("pysqlite3")
import sys

sys.modules["sqlite3"] = sys.modules.pop("pysqlite3")
