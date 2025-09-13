class QCefDownloadItem {

%TypeHeaderCode
#include "QCefDownloadItem.h"
%End

public:
    ~QCefDownloadItem();
    void start(const QString& path, bool useDefaultDialog = true) const;
    void pause() const;
    void resume() const;
    void cancel() const;
    bool isStarted() const;
    bool isInProgress() const;
    bool isComplete() const;
    bool isCanceled() const;
    qint64 currentSpeed() const;
    int percentComplete() const;
    qint64 totalBytes() const;
    qint64 receivedBytes() const;
    QDateTime startTime() const;
    QDateTime endTime() const;
    QString fullPath() const;
    quint32 id() const;
    QString url() const;
    QString originalUrl() const;
    QString suggestedFileName() const;
    QString contentDisposition() const;
    QString mimeType() const;
};
