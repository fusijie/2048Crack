.class Lcom/millennialmedia/android/BannerWebViewClient;
.super Lcom/millennialmedia/android/MMWebViewClient;
.source "BannerWebViewClient.java"


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V
    .locals 0
    .parameter "mmWebViewClientListener"
    .parameter "redirListener"

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/MMWebViewClient;-><init>(Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V

    .line 12
    return-void
.end method


# virtual methods
.method setMraidState(Lcom/millennialmedia/android/MMWebView;)V
    .locals 0
    .parameter "mmWebView"

    .prologue
    .line 17
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMWebView;->setMraidPlacementTypeInline()V

    .line 18
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMWebView;->setMraidDefault()V

    .line 19
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMWebView;->setMraidReady()V

    .line 20
    return-void
.end method
