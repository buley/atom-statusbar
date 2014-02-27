class AppDelegate
	attr_accessor :window

	def applicationDidFinishLaunching(notification)
		@app = NSApplication.sharedApplication
		@menu = setupMenu()
		initStatusBar(@menu)
		@app.run
		true
	end

	def setupMenu

	    menu = NSMenu.new
	    menu.initWithTitle 'AtomLauncher'

	    status_items = [ 'Launch' ]
	    status_items.each { |status_item|
	        mi = NSMenuItem.new
	        mi.title = status_item
	        mi.action = 'launchAtom:'
	        mi.target = self
	        menu.addItem mi
	    }

	    menu.addItem NSMenuItem.separatorItem

	    mi = NSMenuItem.new
	    mi.title = 'Quit'
	    mi.action = 'quit:'
	    mi.target = self
	    menu.addItem mi

	    menu

	end

	def initStatusBar(menu)
	    status_item = NSStatusBar.systemStatusBar.statusItemWithLength(NSVariableStatusItemLength)
	    status_item.setMenu menu
	    status_item.setImage( NSImage.new.initWithContentsOfFile NSBundle.mainBundle.pathForResource('atom_16x16@2x', ofType: 'png') )
	end

	def launchAtom(domain)
	    sshCmd = `atom`
	end

	def quit(sender)
	    @app.terminate(self)
	end
end
