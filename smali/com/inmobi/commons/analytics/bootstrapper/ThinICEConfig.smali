.class public Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;
.super Ljava/lang/Object;
.source "ThinICEConfig.java"


# static fields
.field public static final CELL_OP_FLAGS_DEFAULT:I = 0x0

.field public static final ENABLED_DEFAULT:Z = true

.field public static final END_POINT_DEFAULT:Ljava/lang/String; = ""

.field public static final MAX_RETRY_DEFAULT:J = 0x3L

.field public static final RETRY_INTERVAL:J = 0x3L

.field public static final SAMPLE_CELL_CONNECTED_WIFI_ENABLED_DEFAULT:Z = true

.field public static final SAMPLE_CELL_ENABLED_DEFAULT:Z = true

.field public static final SAMPLE_CELL_OPERATOR_ENABLED_DEFAULT:Z = true

.field public static final SAMPLE_CELL_VISIBLE_WIFI_ENABLED_DEFAULT:Z = true

.field public static final SAMPLE_HISTORY_SIZE_DEFAULT:I = 0x32

.field public static final SAMPLE_INTERVAL_DEFAULT:J = 0x3cL

.field public static final STOP_REQUEST_TIMEOUT_DEFAULT:J = 0x3L

.field public static final WIFI_FLAGS_DEFAULT:I


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:J

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:J

.field private p:Z

.field private q:J

.field private r:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/16 v0, 0x3c

    iput-wide v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->a:J

    .line 41
    iput-wide v4, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->b:J

    .line 42
    iput-wide v4, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->c:J

    .line 43
    iput-wide v4, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->d:J

    .line 44
    const/16 v0, 0x32

    iput v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->e:I

    .line 45
    iput v3, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->f:I

    .line 46
    iput v3, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->g:I

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->h:Ljava/lang/String;

    .line 48
    iput-boolean v2, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->i:Z

    .line 49
    iput-boolean v2, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->j:Z

    .line 50
    iput-boolean v2, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->k:Z

    .line 51
    iput-boolean v2, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->l:Z

    .line 52
    iput-boolean v2, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->m:Z

    .line 54
    iput-boolean v3, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->n:Z

    .line 55
    const-wide/32 v0, 0x15180

    iput-wide v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->o:J

    .line 56
    iput-boolean v3, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->p:Z

    .line 57
    const-wide/16 v0, 0xb4

    iput-wide v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->q:J

    .line 58
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->r:J

    .line 134
    return-void
.end method


# virtual methods
.method public getActivityDetectionInterval()J
    .locals 4

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->q:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getActivityDetectionMaxSize()J
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->r:J

    return-wide v0
.end method

.method public getAppDetectionInterval()J
    .locals 4

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->o:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getCellOpsFlag()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->g:I

    return v0
.end method

.method public getEndpointUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxRetry()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->d:J

    return-wide v0
.end method

.method public getRetryInterval()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->c:J

    return-wide v0
.end method

.method public getSampleHistorySize()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->e:I

    return v0
.end method

.method public getSampleInterval()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->a:J

    return-wide v0
.end method

.method public getStopRequestTimeout()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->b:J

    return-wide v0
.end method

.method public getWifiFlags()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->f:I

    return v0
.end method

.method public isActivityDetectionEnabled()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->p:Z

    return v0
.end method

.method public isAppDetectionEnabled()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->n:Z

    return v0
.end method

.method public isCellEnabled()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->k:Z

    return v0
.end method

.method public isConnectedWifiEnabled()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->l:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->i:Z

    return v0
.end method

.method public isOperatorEnabled()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->j:Z

    return v0
.end method

.method public isVisibleWifiEnabled()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->m:Z

    return v0
.end method

.method public final setFromMap(Ljava/util/Map;)V
    .locals 12
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
    const-wide/16 v9, 0xf

    const/4 v8, 0x0

    const-wide/16 v2, 0x1

    const-wide v4, 0x7fffffffffffffffL

    .line 138
    const-string v1, "si"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getLongFromMap(Ljava/util/Map;Ljava/lang/String;JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->a:J

    .line 139
    const-string v1, "srt"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getLongFromMap(Ljava/util/Map;Ljava/lang/String;JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->b:J

    .line 140
    const-string v0, "shs"

    const/4 v1, 0x1

    const-wide/32 v6, 0x7fffffff

    invoke-static {p1, v0, v1, v6, v7}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->e:I

    .line 141
    const-string v0, "wfd"

    invoke-static {p1, v0, v8, v9, v10}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->f:I

    .line 142
    const-string v0, "cof"

    invoke-static {p1, v0, v8, v9, v10}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->g:I

    .line 144
    const-string v0, "e"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->i:Z

    .line 145
    const-string v0, "sccw"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->l:Z

    .line 146
    const-string v0, "sced"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->k:Z

    .line 148
    const-string v0, "scoe"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->j:Z

    .line 149
    const-string v0, "scvw"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->m:Z

    .line 151
    const-string v0, "ep"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->h:Ljava/lang/String;

    .line 152
    const-string v7, "mr"

    const-wide/16 v8, 0x0

    move-object v6, p1

    move-wide v10, v4

    invoke-static/range {v6 .. v11}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getLongFromMap(Ljava/util/Map;Ljava/lang/String;JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->d:J

    .line 153
    const-string v1, "ri"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getLongFromMap(Ljava/util/Map;Ljava/lang/String;JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->c:J

    .line 155
    const-string v0, "ao"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->n:Z

    .line 156
    const-string v1, "aoi"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getLongFromMap(Ljava/util/Map;Ljava/lang/String;JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->o:J

    .line 158
    const-string v0, "as"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->p:Z

    .line 159
    const-string v1, "assi"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getLongFromMap(Ljava/util/Map;Ljava/lang/String;JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->q:J

    .line 160
    const-string v1, "asm"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getLongFromMap(Ljava/util/Map;Ljava/lang/String;JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->r:J

    .line 161
    return-void
.end method
