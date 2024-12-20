from __future__ import annotations

import sys
import asyncio

from factory import create_app

from config import HOST, PORT

if sys.platform == "win32":
    asyncio.set_event_loop_policy(asyncio.WindowsSelectorEventLoopPolicy())

else:
    # noinspection PyUnresolvedReferences
    import uvloop

    asyncio.set_event_loop_policy(uvloop.EventLoopPolicy())

app = create_app()

if __name__ == "__main__":
    loop = asyncio.new_event_loop()
    asyncio.set_event_loop(loop)
    app.run(host=HOST, port=PORT, loop=loop)
