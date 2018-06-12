TEMPLATE = subdirs

SUBDIRS += \
    util \
    tests \

tests.depends = util
