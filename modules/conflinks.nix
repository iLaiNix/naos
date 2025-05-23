{ config, lib, ... }:

let
  hmdir = "/home/asus";
  naosDir = "${hmdir}/naos";
  confD = "${naosDir}/.config";
in 
  {
   xdg.configFile = {
     "waybar" = {
       source = "${confD}/waybar";
       recursive = true;
     };
     "hypr" = {
       source = "${confD}/hypr";
       recursive = true;
     };
     "fuzzel" = {
       source = "${confD}/fuzzel";
       recursive = true;
     };
  };
}
