from __future__ import annotations

import asyncio

from factory import create_app

from config import HOST, PORT

try:
    # noinspection PyUnresolvedReferences
    import uvloop

except ImportError:
    pass

else:
    asyncio.set_event_loop_policy(uvloop.EventLoopPolicy())

app = create_app()

if __name__ == "__main__":
    loop = asyncio.new_event_loop()
    asyncio.set_event_loop(loop)
    app.run(host=HOST, port=PORT, loop=loop)
