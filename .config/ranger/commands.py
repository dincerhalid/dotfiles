from ranger.api.commands import Command


class setwal(Command):
    def execute(self):
        from os.path import join, expanduser, lexists
        from os import makedirs
        import re
        self.fm.execute_console('feh --bg-scale' + str(self.fm.thisfile))
