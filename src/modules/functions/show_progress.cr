module Hashbrown
    extend self
  
    def progress_bar_visibility(progress_bar : Gtk::ProgressBar, show : Bool? = true) : Bool
        progress_bar.fraction = 0.0 if show # Set to zero only before showing to ensure desired outcome
        progress_bar.visible = show
        true
    end

    def update_progress_bar(progress_bar : Gtk::ProgressBar, total : Int32) : Bool
        increasement = 100.0 / total
        progress_bar.fraction = progress_bar.fraction + increasement > 100.0 ? 100.0 :  progress_bar.fraction + increasement
        true
    end
  end
  