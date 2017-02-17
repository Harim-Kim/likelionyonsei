class PartialsController < ApplicationController
    def _sidenav
      @sl = Sl.all.sort
    @fl = Fl.all.sort
    end
end
