# @ ----------------------------------------------------------
# Tick's MOTD
# A simple script that displays a customizable message of the
# day in the Server List.
# Author: 0TickPulse
# Lisense: https://github.com/0tickpulse/TickMC/blob/master/LICENSE
# modified by poppie#6924 on 11-27-2022, 09:34 GMT+3
#created by 0TickPulse under the GNU AFFERO GENERAL PUBLIC LICENSE license
# @ ----------------------------------------------------------

tick_motd_data:
    type: data
    line_1:
    - <&c><&gradient[from=yellow;to=red]>KingHills RPG <context.version_name.replace[Paper ]>+
    line_2:
    - <&c>❱<&r><&4> i love kittens.
    - <&c>❱<&r><&3><&l> did anyone hear that?
    - <&c>❱<&r><&8><&l> connection failed
    - <&c>❱<&r><&2><&l> internal server error 500
    - <&c>❱<&r><&d> i love spongebob
    - <&c>❱<&r><&7><&l> the world is so colorful!
    - <&c>❱<&r><&f><&l> some of us cant spell
    - <&c>❱<&4> vector<&lt>char<&gt> c; c={K,I,N,G,H,I,L,L,S};
    player_text:
    - <&c>Welcome to kinghills!
    - <&c><&l>Our Staff<&co>
    - <&7>Owner <&8>- <&c>ArcSid
    - <&7>Owner <&8>- <&c>Flaxeneel2
    - <&7>Owner <&8>- <&c>HyperFrank
    - <&7>Shadow Dev <&8>- <&c>0TickPulse
    - <empty>
    - <&c>load resource pack for custom item backgrounds && damage particle remover!
    - <empty>
    - <&7>Enjoy your time on <&c>KingHills<&7>!
tick_motd_world:
    type: world
    debug: false
    events:
        on server list ping:
        - if <server.has_flag[tick_no_quick_join.startup_progress]>:
            - stop
        - define ip <context.address>
        - define line1 <script[tick_motd_data].data_key[line_1].random.parsed>
        - define line2 <script[tick_motd_data].data_key[line_2].random.parsed>
        - determine passively <[line1]><n><[line2]>
        - determine alternate_player_text:<script[tick_motd_data].data_key[player_text].parse[parsed]>