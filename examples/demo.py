import sys

from PyQt6.QtWidgets import QApplication, QMainWindow
from QCefView import QCefConfig, QCefContext, QCefSetting, QCefView


def main():
    app = QApplication(sys.argv)
    config = QCefConfig()
    context = QCefContext(app, sys.argv, config)
    setting = QCefSetting()
    view = QCefView("https://www.baidu.com", setting)
    win = QMainWindow()
    win.setWindowTitle("PyQCefView Demo")
    win.resize(800, 500)
    win.setCentralWidget(view)
    win.show()
    app.exec()


if __name__ == "__main__":
    main()
