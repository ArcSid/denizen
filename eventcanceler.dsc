# Configuration
#created by 0TickPulse under the GNU AFFERO GENERAL PUBLIC LICENSE license
cancel_open_inventories_config:
  type: data
  # Whether it should be enabled
  enabled: true
  # set workbenches that you want to disable
  disabled_workbenches:
  - enchanting
  - anvil
cancel_open_inventories_world:
  type: world
  debug: false
  events:
    on player opens inventory:
    - stop if:<script[cancel_open_inventories_config].data_key[enabled].not>
    - determine cancelled if:<context.inventory.inventory_type.is_in[<script[cancel_open_inventories_config].data_key[disabled_workbenches]>]>