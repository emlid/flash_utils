TEMPLATE = subdirs

SUBDIRS += \
    utils \

!EXCLUDE_TESTS_BUILD {
   SUBDIRS += tests
   tests.depends = utils
}
