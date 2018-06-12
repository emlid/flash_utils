TEMPLATE = subdirs

SUBDIRS += \
    utils \
    tests \

tests.depends = utils
