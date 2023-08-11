require_relative 'lib/pawn_simulator'

puts "Welcome to Pawn Stimulator game.Here are some valid commands -
1. PLACE X,Y,F,C
2. MOVE X
3. LEFT
4. RIGHT
5. REPORT
6. EXIT
====================="

pawn_simulator = PawnSimulator.new

loop do
  print "> "
  command = STDIN.gets
  command.strip!

  if command == "EXIT"
  	puts "Thanks for playing the game!"
  	exit
  end

  output = pawn_simulator.call(command)
  puts output if output
end
