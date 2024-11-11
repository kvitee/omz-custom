if ! (command -v eza > /dev/null); then
  print "Install eza to use aliases." >&2
  return 0
fi

function _alias_eza() {
  alias "$1"="eza -ho$2 --smart-group --group-directories-first --git --git-ignore --icons=auto $3"
}

_alias_eza l
_alias_eza ll   l
_alias_eza la   la
_alias_eza ldot ld ".*"
_alias_eza lD   D
_alias_eza llD  lD
_alias_eza laD  laD
_alias_eza lt   T
_alias_eza lta  Ta

unfunction _alias_eza
