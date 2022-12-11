onfirstjoin:
  type: world
  debug: false
  events:
      on player joins:
          - if <player.statistic[play_one_minute]> <= 20:
            - announce "<&e><player.name> joined the game for the first time!"
          - else:
            - announce "<&e><player.name> joined the game."
ec_cmd:
   type: command
   debug: false
   name: ec
   description: open enderchest
   usage: /ec
   script:
   - inventory open destination:<player.enderchest>
spawn_cmd:
   type: command
   debug: false
   name: spawn
   description: tp to spawn
   usage: /spawn
   script:
   - teleport <player> 3355,64,771,0,160,old_world
Warp_Owl:
   type: command
   debug: false
   name: owl-cave
   description: tp to owl cave
   usage: /owl-cave
   script:
   - teleport <player> 3597,78,1856,0,354,old_world
Warp_Dungeon:
   type: command
   debug: false
   name: dungeon-hub
   description: warp to dungeon hub
   usage: /dungeon-hub
   script:
   - teleport <player> 2595,175,1234,0,90,old_world
Warp_Forge:
   type: command
   debug: false
   name: forge
   description: warp to the forge
   usage: /forge
   script:
   - teleport <player> 2861,169,1408,0,180,old_world