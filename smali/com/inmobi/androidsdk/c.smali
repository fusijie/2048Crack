.class Lcom/inmobi/androidsdk/c;
.super Ljava/lang/Object;
.source "BannerView.java"

# interfaces
.implements Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/androidsdk/BannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/BannerView;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/BannerView;)V
    .locals 0
    .parameter

    .prologue
    .line 1188
    iput-object p1, p0, Lcom/inmobi/androidsdk/c;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyResult(ILjava/lang/Object;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 1192
    const-string v0, "[InMobi]-[Network]-4.1.1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> Got HTTP REQUEST callback. Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    if-nez p1, :cond_1

    .line 1196
    iget-object v1, p0, Lcom/inmobi/androidsdk/c;->a:Lcom/inmobi/androidsdk/BannerView;

    move-object v0, p2

    check-cast v0, Lcom/inmobi/androidsdk/impl/net/Response;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/net/Response;->getAdResponse()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inmobi/androidsdk/BannerView;->a(Lcom/inmobi/androidsdk/BannerView;Ljava/lang/String;)Ljava/lang/String;

    .line 1197
    iget-object v0, p0, Lcom/inmobi/androidsdk/c;->a:Lcom/inmobi/androidsdk/BannerView;

    check-cast p2, Lcom/inmobi/androidsdk/impl/net/Response;

    invoke-virtual {p2}, Lcom/inmobi/androidsdk/impl/net/Response;->getImpressionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/BannerView;->c(Lcom/inmobi/androidsdk/BannerView;Ljava/lang/String;)Ljava/lang/String;

    .line 1198
    iget-object v0, p0, Lcom/inmobi/androidsdk/c;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/BannerView;->p(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/androidsdk/BannerView$d;

    move-result-object v0

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/BannerView$d;->sendEmptyMessage(I)Z

    .line 1241
    :cond_0
    :goto_0
    return-void

    .line 1199
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/inmobi/androidsdk/c;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-static {v2}, Lcom/inmobi/androidsdk/BannerView;->b(Lcom/inmobi/androidsdk/BannerView;)J

    move-result-wide v2

    sub-long v1, v0, v2

    .line 1201
    iget-object v0, p0, Lcom/inmobi/androidsdk/c;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/BannerView;->p(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/androidsdk/BannerView$d;

    move-result-object v0

    const/16 v3, 0x6e

    invoke-virtual {v0, v3}, Lcom/inmobi/androidsdk/BannerView$d;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1204
    instance-of v0, p2, Lcom/inmobi/androidsdk/impl/AdException;

    if-eqz v0, :cond_4

    .line 1205
    check-cast p2, Lcom/inmobi/androidsdk/impl/AdException;

    .line 1206
    invoke-virtual {p2}, Lcom/inmobi/androidsdk/impl/AdException;->getErrorCode()Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    move-result-object v0

    .line 1208
    iget-object v4, p0, Lcom/inmobi/androidsdk/c;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-static {v4}, Lcom/inmobi/androidsdk/BannerView;->c(Lcom/inmobi/androidsdk/BannerView;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1209
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1211
    :try_start_0
    const-string v5, "ad"

    invoke-virtual {p2}, Lcom/inmobi/androidsdk/impl/AdException;->getImpressionId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1212
    const-string v5, "t"

    invoke-virtual {v4, v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1213
    const-string v1, "m"

    invoke-virtual {p2}, Lcom/inmobi/androidsdk/impl/AdException;->getHttpCode()I

    move-result v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1219
    :goto_1
    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/metric/EventLog;

    sget-object v5, Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;->RESPONSE_ERROR:Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;

    invoke-direct {v2, v5, v4}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    :cond_2
    move-object p2, v0

    .line 1238
    :cond_3
    :goto_2
    iput-object p2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1239
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1214
    :catch_0
    move-exception v1

    .line 1215
    const-string v1, "[InMobi]-[Network]-4.1.1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error creating metric logs for error at "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1222
    :cond_4
    check-cast p2, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    .line 1223
    invoke-virtual {p2}, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->getErrorCode()I

    move-result v0

    .line 1225
    iget-object v4, p0, Lcom/inmobi/androidsdk/c;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-static {v4}, Lcom/inmobi/androidsdk/BannerView;->c(Lcom/inmobi/androidsdk/BannerView;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1226
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1228
    :try_start_1
    const-string v5, "t"

    invoke-virtual {v4, v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1229
    const-string v1, "m"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1235
    :goto_3
    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    sget-object v2, Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;->CONNECT_ERROR:Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;

    invoke-direct {v1, v2, v4}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    goto :goto_2

    .line 1230
    :catch_1
    move-exception v0

    .line 1231
    const-string v0, "[InMobi]-[Network]-4.1.1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error creating metric logs for error at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
