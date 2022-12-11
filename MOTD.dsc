#@ dzlMOTD
#@ v1.0 - MadeBySaints
motdconfig:
    type: data
    #show motd to players not flagged disablemotd?
    motdlogin: true
    #time in seconds before user can use /motd again
    cooldown: 60
    #add or remove lines as you wish. Must follow format as below: - "message text here"
    motdlines:
        - "&cWelcome to the server"
        - "&cType &4/kh &cfor main menu"
        - "&cType &4/warps &cfor warp menu"
        - "&cEnjoy your stay!"
        - "&cType &e/motd toggle&a to disable this message."
#@---------------------------------------------------------------
MOTD_Command:
    type: command
    debug: false
    permission: dz.user.motd
    description: Displays the message of the day.
    name: motd
    usage: /motd
    tab completions:
        1: toggle
    script:
        - if <context.args.size> == 0:
            - if <player.has_flag[motdcooldown]> == true:
                - narrate format:motdformat "Message of the day on cooldown. Please try again later."
                - stop
            - define motd <script[motdconfig].data_key[motdlines]>
            - foreach <[motd]> as:line:
                - narrate format:motdformat "<[line].parse_color>"
            - flag player motdcooldown duration:<script[motdconfig].data_key[cooldown]>s
            - if <player.has_flag[disablemotd]> == true:
                - flag player disablemotd:!
                - narrate format:motdformat "<green>Message of the day re-enabled."
        - if <context.args.size> == 1 && <context.args.get[1]> == toggle:
            - if <player.has_flag[disablemotd]>:
                - flag player disablemotd:!
                - narrate format:motdformat "<green>Message of the day re-enabled."
            - else:
                - flag player disablemotd
                - narrate format:motdformat "<green>Message of the day disabled."
                - narrate format:motdformat "<green>Type <gold>/motd toggle<green> to re-enable it."
MOTDEvent:
    type: world
    debug: false
    events:
        after player joins:
            - if <script[motdconfig].data_key[motdlogin]> == true:
                - if !<player.has_flag[disablemotd]>:
                    - wait 3s
                    - define motd <script[motdconfig].data_key[motdlines]>
                    - foreach <[motd]> as:line:
                        - narrate format:motdformat "<[line].parse_color>"

motdformat:
    type: format
    debug: false
    format: "<text>"