.class public Lcom/inmobi/commons/metric/MetricConfigParams;
.super Ljava/lang/Object;
.source "MetricConfigParams.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x3e8

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const v0, 0x69780

    iput v0, p0, Lcom/inmobi/commons/metric/MetricConfigParams;->a:I

    .line 21
    iput v1, p0, Lcom/inmobi/commons/metric/MetricConfigParams;->b:I

    .line 22
    iput v1, p0, Lcom/inmobi/commons/metric/MetricConfigParams;->c:I

    .line 23
    const/16 v0, 0xa

    iput v0, p0, Lcom/inmobi/commons/metric/MetricConfigParams;->d:I

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/commons/metric/MetricConfigParams;->e:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public getDumpThreshhold()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/inmobi/commons/metric/MetricConfigParams;->d:I

    return v0
.end method

.method public getMaxInQueue()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/inmobi/commons/metric/MetricConfigParams;->b:I

    return v0
.end method

.method public getNextRetryInterval()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/inmobi/commons/metric/MetricConfigParams;->a:I

    return v0
.end method

.method public getSamplingFactor()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/inmobi/commons/metric/MetricConfigParams;->c:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/inmobi/commons/metric/MetricConfigParams;->e:Ljava/lang/String;

    return-object v0
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
    const-wide/32 v2, 0x7fffffff

    const/4 v1, 0x1

    .line 52
    const-string v0, "sf"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/commons/metric/MetricConfigParams;->c:I

    .line 54
    const-string v0, "dt"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/commons/metric/MetricConfigParams;->d:I

    .line 56
    const-string v0, "max"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/commons/metric/MetricConfigParams;->b:I

    .line 58
    const-string v0, "nri"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/commons/metric/MetricConfigParams;->a:I

    .line 60
    const-string v0, "url"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/metric/MetricConfigParams;->e:Ljava/lang/String;

    .line 61
    return-void
.end method
