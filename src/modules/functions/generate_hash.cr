module Hashbrown
  extend self

  def run_cmd(cmd, args)
    stdout = IO::Memory.new
    stderr = IO::Memory.new
    status = Process.run(cmd, args: args, output: stdout, error: stderr)

    output = stderr.to_s.size == 0 ? stdout.to_s : stderr.to_s
    output
  end

  def generate_hashes(filename : String, textFields : Hash(String, Gtk::TextView), copyBtns : Array(Gtk::Button)) : Hash(Gtk::Button, String)
    tempBtns = Hash(Gtk::Button, String).new
    i = 0
    Hashbrown.progress_bar_visibility(PROGRESS_BAR, true)
    textFields.each do |k, v|
      output = Hashbrown.run_cmd("#{k}", [filename]).split(" ")[0]
      Hashbrown.update_progress_bar(PROGRESS_BAR, textFields.keys.size)
      v.buffer.set_text(output, output.size)
      tempBtns[copyBtns[i]] = output
      i = i.succ
    end
    Hashbrown.progress_bar_visibility(PROGRESS_BAR, false)
    tempBtns
  end
end
