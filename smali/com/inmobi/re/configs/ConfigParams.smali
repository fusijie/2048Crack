.class public Lcom/inmobi/re/configs/ConfigParams;
.super Ljava/lang/Object;
.source "ConfigParams.java"


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:I

.field d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "#00000000"

    iput-object v0, p0, Lcom/inmobi/re/configs/ConfigParams;->a:Ljava/lang/String;

    .line 25
    const/16 v0, 0x140

    iput v0, p0, Lcom/inmobi/re/configs/ConfigParams;->b:I

    .line 26
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/inmobi/re/configs/ConfigParams;->c:I

    .line 27
    const/16 v0, 0x64

    iput v0, p0, Lcom/inmobi/re/configs/ConfigParams;->d:I

    .line 59
    return-void
.end method


# virtual methods
.method public getPicHeight()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/inmobi/re/configs/ConfigParams;->c:I

    return v0
.end method

.method public getPicQuality()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/inmobi/re/configs/ConfigParams;->d:I

    return v0
.end method

.method public getPicWidth()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/inmobi/re/configs/ConfigParams;->b:I

    return v0
.end method

.method public getUID()Lcom/inmobi/commons/uid/UID;
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/inmobi/commons/uid/UID;->getCommonsUid()Lcom/inmobi/commons/uid/UID;

    move-result-object v0

    return-object v0
.end method

.method public getWebviewBgColor()I
    .locals 3

    .prologue
    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/configs/ConfigParams;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 50
    :goto_0
    return v0

    .line 45
    :catch_0
    move-exception v0

    .line 47
    const-string v1, "[InMobi]-[RE]-4.1.1"

    const-string v2, "Invalid bg color. Reverting to default"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    const-string v0, "#00000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public setFromMap(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/32 v1, 0x7fffffff

    const/4 v3, 0x1

    .line 63
    const-string v0, "wthc"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/re/configs/ConfigParams;->a:Ljava/lang/String;

    .line 64
    const-string v0, "picH"

    invoke-static {p1, v0, v3, v1, v2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/re/configs/ConfigParams;->c:I

    .line 65
    const-string v0, "picW"

    invoke-static {p1, v0, v3, v1, v2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/re/configs/ConfigParams;->b:I

    .line 66
    const-string v0, "picA"

    const-wide/16 v1, 0x64

    invoke-static {p1, v0, v3, v1, v2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/re/configs/ConfigParams;->d:I

    .line 67
    return-void
.end method
