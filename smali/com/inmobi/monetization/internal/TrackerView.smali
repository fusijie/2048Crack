.class public Lcom/inmobi/monetization/internal/TrackerView;
.super Landroid/view/View;
.source "TrackerView.java"


# static fields
.field public static final ID:I = 0x3e7


# instance fields
.field a:Landroid/webkit/WebViewClient;

.field private b:Lcom/inmobi/re/container/IMWebView;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 31
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    iput-boolean v2, p0, Lcom/inmobi/monetization/internal/TrackerView;->c:Z

    .line 28
    iput-object v3, p0, Lcom/inmobi/monetization/internal/TrackerView;->e:Ljava/util/ArrayList;

    .line 29
    iput-boolean v2, p0, Lcom/inmobi/monetization/internal/TrackerView;->f:Z

    .line 127
    new-instance v0, Lcom/inmobi/monetization/internal/a;

    invoke-direct {v0, p0}, Lcom/inmobi/monetization/internal/a;-><init>(Lcom/inmobi/monetization/internal/TrackerView;)V

    iput-object v0, p0, Lcom/inmobi/monetization/internal/TrackerView;->a:Landroid/webkit/WebViewClient;

    .line 32
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    iput-object p3, p0, Lcom/inmobi/monetization/internal/TrackerView;->d:Ljava/lang/String;

    .line 35
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 37
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 38
    invoke-virtual {p0, v0}, Lcom/inmobi/monetization/internal/TrackerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    invoke-virtual {p0, v2}, Lcom/inmobi/monetization/internal/TrackerView;->setBackgroundColor(I)V

    .line 41
    const-class v0, Lcom/inmobi/androidsdk/impl/imai/IMAIController;

    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->setIMAIController(Ljava/lang/Class;)V

    .line 42
    new-instance v0, Lcom/inmobi/re/container/IMWebView;

    invoke-direct {v0, p1, v3, v2, v2}, Lcom/inmobi/re/container/IMWebView;-><init>(Landroid/content/Context;Lcom/inmobi/re/container/IMWebView$IMWebViewListener;ZZ)V

    iput-object v0, p0, Lcom/inmobi/monetization/internal/TrackerView;->b:Lcom/inmobi/re/container/IMWebView;

    .line 43
    iget-object v0, p0, Lcom/inmobi/monetization/internal/TrackerView;->b:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 44
    iget-object v0, p0, Lcom/inmobi/monetization/internal/TrackerView;->b:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 45
    iget-object v0, p0, Lcom/inmobi/monetization/internal/TrackerView;->b:Lcom/inmobi/re/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/monetization/internal/TrackerView;->a:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 46
    iget-object v0, p0, Lcom/inmobi/monetization/internal/TrackerView;->b:Lcom/inmobi/re/container/IMWebView;

    const-string v1, "text/html"

    const-string v2, "UTF-8"

    invoke-virtual {v0, p2, v1, v2}, Lcom/inmobi/re/container/IMWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/monetization/internal/TrackerView;->e:Ljava/util/ArrayList;

    .line 48
    const/16 v0, 0x3e7

    invoke-virtual {p0, v0}, Lcom/inmobi/monetization/internal/TrackerView;->setId(I)V

    goto :goto_0
.end method

.method private a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/inmobi/monetization/internal/TrackerView;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "recordEvent(18)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/inmobi/monetization/internal/TrackerView;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "recordEvent(8)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    .line 90
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/inmobi/monetization/internal/TrackerView;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "recordEvent(8, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 92
    invoke-static {p1, v1}, Lcom/inmobi/commons/uid/UIDUtil;->bindToJSON(Ljava/util/Map;Lorg/json/JSONObject;)V

    .line 93
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/monetization/internal/TrackerView;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/inmobi/monetization/internal/TrackerView;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/monetization/internal/TrackerView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/inmobi/monetization/internal/TrackerView;->e:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/monetization/internal/TrackerView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/inmobi/monetization/internal/TrackerView;->f:Z

    return p1
.end method


# virtual methods
.method public click(Ljava/util/HashMap;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Handle Click"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0, p1}, Lcom/inmobi/monetization/internal/TrackerView;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 108
    iget-boolean v1, p0, Lcom/inmobi/monetization/internal/TrackerView;->f:Z

    if-eqz v1, :cond_1

    .line 109
    invoke-virtual {p0, v0}, Lcom/inmobi/monetization/internal/TrackerView;->injectJavaScript(Ljava/lang/String;)V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/inmobi/monetization/internal/TrackerView;->e:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/inmobi/monetization/internal/TrackerView;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 53
    iget-object v0, p0, Lcom/inmobi/monetization/internal/TrackerView;->b:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/inmobi/monetization/internal/TrackerView;->b:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->destroy()V

    .line 55
    iput-object v2, p0, Lcom/inmobi/monetization/internal/TrackerView;->b:Lcom/inmobi/re/container/IMWebView;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/inmobi/monetization/internal/TrackerView;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/inmobi/monetization/internal/TrackerView;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 59
    iput-object v2, p0, Lcom/inmobi/monetization/internal/TrackerView;->e:Ljava/util/ArrayList;

    .line 61
    :cond_1
    iput-boolean v1, p0, Lcom/inmobi/monetization/internal/TrackerView;->c:Z

    .line 62
    iput-boolean v1, p0, Lcom/inmobi/monetization/internal/TrackerView;->f:Z

    .line 63
    return-void
.end method

.method public handleImpression(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 100
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Handle Impression"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, p1}, Lcom/inmobi/monetization/internal/TrackerView;->injectJavaScript(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public injectJavaScript(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 115
    if-eqz p1, :cond_1

    .line 116
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    .line 117
    const-string v0, "[InMobi]-[Monetization]"

    invoke-static {v0, p1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/inmobi/monetization/internal/TrackerView;->b:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/inmobi/monetization/internal/TrackerView;->b:Lcom/inmobi/re/container/IMWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:try{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}catch(e){}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_1
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2
    .parameter

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 67
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/monetization/internal/TrackerView;->c:Z

    if-nez v0, :cond_0

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/monetization/internal/TrackerView;->c:Z

    .line 69
    iget-boolean v0, p0, Lcom/inmobi/monetization/internal/TrackerView;->f:Z

    if-eqz v0, :cond_1

    .line 70
    invoke-direct {p0}, Lcom/inmobi/monetization/internal/TrackerView;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/monetization/internal/TrackerView;->handleImpression(Ljava/lang/String;)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/inmobi/monetization/internal/TrackerView;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/inmobi/monetization/internal/TrackerView;->e:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/inmobi/monetization/internal/TrackerView;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
