module Flower::DefaultModifiers;

our sub all() {
  my %modifiers = {
    string => &string,
    true   => &true,
    false  => &false,
    'not'  => &false,
  };
  return %modifiers;
}

our sub true ($parent, $query) {
  my $result = $parent.query($query);
  return ?$result;
}

our sub false ($parent, $query) {
  my $result = $parent.query($query);
  if $result { return False; }
  else { return True; }
}

our sub string ($parent, $query) {
  return $query;
}
