AutoServerRestart_Events:
    type: world
    debug: false
    events:
        on server start:
        - wait 150m
        - announce "<&7>Restarting server in 30 minutes."
        - wait 20m
        - announce "<&7>Restarting server in 10 minutes."
        - wait 9m
        - announce "<&7>Restarting server in 1 minute."
        - wait 49s
        - announce "<&7>Restarting server in 10 seconds."
        - wait 9s
        - announce "<&7>Saving and Restarting..."
        - wait 3s
        - adjust server restart