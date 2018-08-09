TEMPLATE = subdirs

SUBDIRS += \
    utils \

FUTILS_INCLUDE_TESTS {
   SUBDIRS += tests
   tests.depends = utils
}
