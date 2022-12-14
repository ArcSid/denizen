#created by 0TickPulse under the GNU AFFERO GENERAL PUBLIC LICENSE license
tick_essentials_vanish_can_see:
    type: procedure
    definitions: viewer|player
    script:
    - if <[viewer].has_permission[tick_essentials.command.vanish]>:
        - determine true
    - if <[player].flag[tick_essentials.vanished].if_null[false]>:
        - determine false
    - determine true
tick_essentials_vanish_world:
    type: world
    debug: false
    events:
        on entity targets player:
        - if <player.flag[tick_essentials.vanished].if_null[false]>:
            - determine cancelled
