invsee:
   type: command
   name: invsee
   description: see player inventory
   usage: /invsee
   script:
   - if <player.is_op> {
     - inventory open destination:<p@[<context.raw_args>].inventory>
     - queue clear
     }
   - narrate "<red>No permission"
endersee:
   type: command
   name: endersee
   description: check player enderchest
   usage: /endersee
   script:
   - if <player.is_op> {
     - inventory open destination:<server.match_player[<context.args.get[1]>].enderchest>
     - queue clear
     }
   - narrate "<red>no permission!"