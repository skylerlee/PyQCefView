import sys

from pyqtbuild import PyQtBindings, PyQtProject, QmakeBuilder
from sipbuild import Option, UserException


class QCefViewBindings(PyQtBindings):
    def __init__(self, project):
        super().__init__(project, "QCefView")

    def get_options(self):
        options = super().get_options()
        options += [
            Option("cef_incdir", help="the CEF include dir", metavar="DIR"),
            Option("cef_libdir", help="the CEF library dir", metavar="DIR"),
            Option("cef_lib", help="the CEF library", metavar="LIB"),
        ]
        return options

    def apply_user_defaults(self, tool):
        if sys.platform == "darwin":
            self.include_dirs += [self.cef_incdir]
            self.extra_link_args += [
                f"-F{self.cef_libdir}",
                f"-framework {self.cef_lib}",
            ]
        else:
            self.include_dirs += [self.cef_incdir]
            self.library_dirs += [self.cef_libdir]
            self.libraries += [self.cef_lib]
        return super().apply_user_defaults(tool)

    def verify_configuration(self, tool):
        required_options = ["cef_incdir", "cef_libdir", "cef_lib"]
        for opt in required_options:
            if not getattr(self, opt):
                raise UserException(
                    f"Option --{opt.replace('_', '-')}=<path> is required (or set in the config file)"
                )
        super().verify_configuration(tool)


class QCefViewProject(PyQtProject):
    def __init__(self):
        super().__init__()
        self.builder_factory = QmakeBuilder
        self.bindings_factories = [QCefViewBindings]

    def apply_user_defaults(self, tool):
        return super().apply_user_defaults(tool)
