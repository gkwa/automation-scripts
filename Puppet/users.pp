
user { 'Medienwerkstatt':
  ensure  => absent,
  comment => 'Medienwerkstatt',
  home    => 'C:\Users\medienwerkstatt',
  managehome => true,
  password => 'Mwst2010',
}