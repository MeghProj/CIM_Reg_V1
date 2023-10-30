from configparser import ConfigParser
from robot.api import logger


class ConfigReader:
    """ """

    ROBOT_LIBRARY_SCOPE = 'TEST SUITE'

    def __init__(self, text=False):
        """ Constructor """

        self.text = text
        self.data = {}
        self.sub_data = {}
        logger.info('Initialize CONFIG-Data', also_console=True)

    def get_cfg_data(self, filename):
        """ """

        cfg_obj = ConfigParser()
        cfg_obj.read(filename, encoding='utf-8')

        for section in cfg_obj.sections():
            self.sub_data = {}
            for option in cfg_obj.options(section):
                self.sub_data[option] = cfg_obj.get(section, option)
            self.data[section] = self.sub_data

        return self.data

    def set_data(self, data):
        """ Setter """

        self.data = data

    def get_data(self):
        """ Getter """

        return self.data
