.class Lcom/inmobi/androidsdk/impl/imai/IMAICore$b$a;
.super Ljava/lang/Object;
.source "IMAICore.java"

# interfaces
.implements Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/androidsdk/impl/imai/IMAICore$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/impl/imai/IMAICore$b;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/impl/imai/IMAICore$b;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/imai/IMAICore$b$a;->a:Lcom/inmobi/androidsdk/impl/imai/IMAICore$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyResult(ILjava/lang/Object;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 231
    :try_start_0
    const-string v0, "[InMobi]-[Network]-4.1.1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got PING IN WEBVIEW callback. Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    if-nez p1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/imai/IMAICore$b$a;->a:Lcom/inmobi/androidsdk/impl/imai/IMAICore$b;

    iget-object v0, v0, Lcom/inmobi/androidsdk/impl/imai/IMAICore$b;->c:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/imai/IMAICore$b$a;->a:Lcom/inmobi/androidsdk/impl/imai/IMAICore$b;

    iget-object v1, v1, Lcom/inmobi/androidsdk/impl/imai/IMAICore$b;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/impl/imai/IMAICore;->firePingInWebViewSuccessful(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    .line 245
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/imai/IMAICore$b$a;->a:Lcom/inmobi/androidsdk/impl/imai/IMAICore$b;

    iget-object v0, v0, Lcom/inmobi/androidsdk/impl/imai/IMAICore$b;->c:Ljava/lang/ref/WeakReference;

    const-string v1, "IMAI Ping in webview failed"

    const-string v2, "pingInWebview"

    iget-object v3, p0, Lcom/inmobi/androidsdk/impl/imai/IMAICore$b$a;->a:Lcom/inmobi/androidsdk/impl/imai/IMAICore$b;

    iget-object v3, v3, Lcom/inmobi/androidsdk/impl/imai/IMAICore$b;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/androidsdk/impl/imai/IMAICore;->fireErrorEvent(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 243
    const-string v1, "[InMobi]-[Network]-4.1.1"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
