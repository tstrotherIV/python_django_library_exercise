import sqlite3
from django.shortcuts import render
from libraryapp.models import Library
from ..connection import Connection


def list_libraries(request):
    with sqlite3.connect(Connection.db_path) as conn:
        conn.row_factory = sqlite3.Row
        db_cursor = conn.cursor()

        db_cursor.execute("""
        select
            libr.id,
            libr.title,
            libr.address
        from libraryapp_library as libr
        """)

        all_libraries = []
        dataset = db_cursor.fetchall()

        for row in dataset:
            libr = Library()
            libr.id = row["id"]
            libr.title = row["title"]
            libr.address = row["address"]

            all_libraries.append(libr)

    template_name = 'libraries/list.html'

    context = {
        'all_libraries': all_libraries
    }

    return render(request, template_name, context)