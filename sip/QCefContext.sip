class QCefContext : public QObject {

%TypeHeaderCode
#include "QCefContext.h"
%End

public:
    QCefContext(QCoreApplication* app, SIP_PYLIST argv, const QCefConfig* config) [(QCoreApplication* app, int argc, char** argv, const QCefConfig* config)];
%MethodCode
        Py_ssize_t argc = PyList_Size(a1);
        static char** argv = new char*[argc];
        for (int i = 0; i < argc; i++) {
            PyObject* argObj = PyList_GetItem(a1, i);
            const char *arg = sipString_AsLatin1String(&argObj);
            argv[i] = const_cast<char*>(arg);
        }
        Py_BEGIN_ALLOW_THREADS
        sipCpp = new sipQCefContext(a0, argc, argv, a2);
        Py_END_ALLOW_THREADS
%End

    static QCefContext* instance();
    ~QCefContext();
    void addLocalFolderResource(const QString& path, const QString& url, int priority = 0);
    void addArchiveResource(const QString& path, const QString& url, const QString& password = "", int priority = 0);
    bool addCookie(const QString& name, const QString& value, const QString& domain, const QString& url);
    bool deleteAllCookies();
    bool addCrossOriginWhitelistEntry(const QString& sourceOrigin,
                                      const QString& targetSchema,
                                      const QString& targetDomain,
                                      bool allowTargetSubdomains);
    bool removeCrossOriginWhitelistEntry(const QString& sourceOrigin,
                                         const QString& targetSchema,
                                         const QString& targetDomain,
                                         bool allowTargetSubdomains);
    bool clearCrossOriginWhitelistEntry();
    const QCefConfig* cefConfig() const;

protected:
    bool init(const QCefConfig* config);
    void uninit();
};
