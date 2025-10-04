%Module(name=QCefView, language="C++")

%Platforms {WIN32_PLATFORM POSIX_PLATFORM MACOS_PLATFORM}

%Import QtCore/QtCoremod.sip
%Import QtWidgets/QtWidgetsmod.sip

%Include QCefConfig.sip
%Include QCefContext.sip
// %Include QCefDownloadItem.sip
%Include QCefEvent.sip
%Include QCefQuery.sip
%Include QCefSetting.sip

typedef int QCefBrowserId;
typedef QString QCefFrameId;

class QCefView : public QWidget {

%TypeHeaderCode
#include "QCefView.h"
%End

public:
    static const QString MainFrameID;
    static const QString AllFrameID;

    enum CefWindowOpenDisposition {
        CefWindowOpenDispositionUnknown,
        CefWindowOpenDispositionCurrentTab,
        CefWindowOpenDispositionSingletonTab,
        CefWindowOpenDispositionNewForeGroundTab,
        CefWindowOpenDispositionNewBackgroundTab,
        CefWindowOpenDispositionNewPopup,
        CefWindowOpenDispositionNewWindow,
        CefWindowOpenDispositionSaveToDisk,
        CefWindowOpenDispositionOffTheRecord,
        CefWindowOpenDispositionIgnoreAction,
    };

    QCefView(const QString& url,
             const QCefSetting* setting,
             QWidget* parent = nullptr,
             Qt::WindowFlags f = Qt::WindowFlags());
    QCefView(QWidget* parent = nullptr, Qt::WindowFlags f = Qt::WindowFlags());
    ~QCefView();
    void addLocalFolderResource(const QString& path, const QString& url, int priority = 0);
    void addArchiveResource(const QString& path, const QString& url, const QString& password = "", int priority = 0);
    int browserId();
    void navigateToString(const QString& content);
    void navigateToUrl(const QString& url);
    bool browserCanGoBack();
    bool browserCanGoForward();
    void browserGoBack();
    void browserGoForward();
    bool browserIsLoading();
    void browserReload();
    void browserStopLoad();
    bool triggerEvent(const QCefEvent& event);
    bool triggerEvent(const QCefEvent& event, const QString& frameId);
    bool broadcastEvent(const QCefEvent& event);
    bool responseQCefQuery(const QCefQuery& query);
    bool executeJavascript(const QString& frameId, const QString& code, const QString& url);
    bool executeJavascriptWithResult(const QString& frameId,
                                     const QString& code,
                                     const QString& url,
                                     const QString& context);
    bool setPreference(const QString& name, const QVariant& value, const QString& error);
    void setDisablePopupContextMenu(bool disable);
    bool isPopupContextMenuDisabled();
    bool hasDevTools();
    void showDevTools();
    void closeDevTools();
    void setEnableDragAndDrop(bool enable);
    bool isDragAndDropEnabled() const;

signals:
    void loadingStateChanged(const int& browserId, bool isLoading, bool canGoBack, bool canGoForward);
    void loadStart(const int& browserId, const QString& frameId, bool isMainFrame, int transitionType);
    void loadEnd(const int& browserId, const QString& frameId, bool isMainFrame, int httpStatusCode);
    void loadError(const int& browserId,
                   const QString& frameId,
                   bool isMainFrame,
                   int errorCode,
                   const QString& errorMsg,
                   const QString& failedUrl);
    void draggableRegionChanged(const QRegion& draggableRegion, const QRegion& nonDraggableRegion);
    void addressChanged(const QString& frameId, const QString& url);
    void titleChanged(const QString& title);
    void faviconURLChanged(const QStringList& urls);
    void fullscreenModeChanged(bool fullscreen);
    void statusMessage(const QString& message);
    void consoleMessage(const QString& message, int level);
    void loadingProgressChanged(double progress);
    void cefUrlRequest(const int& browserId, const QString& frameId, const QString& url);
    void cefQueryRequest(const int& browserId, const QString& frameId, const QCefQuery& query);
    void invokeMethod(const int& browserId,
                      const QString& frameId,
                      const QString& method,
                      const QVariantList& arguments);
    void reportJavascriptResult(const int& browserId,
                                const QString& frameId,
                                const QString& context,
                                const QVariant& result);
    void nativeBrowserCreated(QWindow* window);

protected:
    virtual QCefView* onNewBrowser(const QString& sourceFrameId,
                                   const QString& url,
                                   const QString& name,
                                   QCefView::CefWindowOpenDisposition targetDisposition,
                                   QRect& rect,
                                   QCefSetting& settings);
    virtual bool onNewPopup(const QString& frameId,
                            const QString& targetUrl,
                            QString& targetFrameName,
                            QCefView::CefWindowOpenDisposition targetDisposition,
                            QRect& rect,
                            QCefSetting& settings,
                            bool& disableJavascriptAccess);
    // virtual void onNewDownloadItem(const QSharedPointer<QCefDownloadItem>& item, const QString& suggestedName);
    // virtual void onUpdateDownloadItem(const QSharedPointer<QCefDownloadItem>& item);
    virtual bool onRequestCloseFromWeb();
};
