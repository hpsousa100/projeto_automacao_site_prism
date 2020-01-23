Dir[File.join(File.dirname(__FILE__), '../pages/*_@page.rb')].each {|file| require file}


module PageObjects

    def home
    
       @home ||= MapeandoElementosPage.new

    end    
    
end