.class public Lcom/inmobi/commons/uid/UID;
.super Ljava/lang/Object;
.source "UID.java"


# static fields
.field public static final FACEBOOK_ID:Ljava/lang/String; = "FBA"

.field public static final FBA_DEF:Z = false

.field public static final LID_DEF:Z = true

.field public static final LOGIN_ID:Ljava/lang/String; = "LID"

.field public static final LTVE_DEF:Z = true

.field public static final LTV_ID:Ljava/lang/String; = "LTVID"

.field public static final LTV_ID_ENABLE:Ljava/lang/String; = "LTVID"

.field public static final O1_DEF:Z = true

.field public static final ODIN1:Ljava/lang/String; = "O1"

.field public static final SESSION_ID:Ljava/lang/String; = "SID"

.field public static final SID_DEF:Z = true

.field public static final UM5_DEF:Z = true

.field public static final UM5_ID:Ljava/lang/String; = "UM5"

.field private static a:Lcom/inmobi/commons/uid/UID;


# instance fields
.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/inmobi/commons/uid/UID;

    invoke-direct {v0}, Lcom/inmobi/commons/uid/UID;-><init>()V

    sput-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->b:Z

    .line 26
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->c:Z

    .line 27
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->d:Z

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->e:Z

    .line 29
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->f:Z

    .line 30
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->g:Z

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->b:Z

    .line 26
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->c:Z

    .line 27
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->d:Z

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->e:Z

    .line 29
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->f:Z

    .line 30
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->g:Z

    .line 182
    invoke-static {p1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->setContext(Landroid/content/Context;)V

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/inmobi/commons/uid/UID;-><init>(Landroid/content/Context;)V

    .line 178
    invoke-virtual {p0, p2}, Lcom/inmobi/commons/uid/UID;->setFromMap(Ljava/util/Map;)V

    .line 179
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
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
    const/4 v1, 0x1

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->b:Z

    .line 26
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->c:Z

    .line 27
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->d:Z

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->e:Z

    .line 29
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->f:Z

    .line 30
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->g:Z

    .line 186
    invoke-virtual {p0, p1}, Lcom/inmobi/commons/uid/UID;->setFromMap(Ljava/util/Map;)V

    .line 187
    return-void
.end method

.method private a(ILjava/lang/String;)Ljava/util/Map;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/data/UserInfo;->getDeviceIDMask()I

    move-result v0

    .line 98
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 99
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 101
    if-gtz v0, :cond_6

    .line 102
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->b:Z

    if-eqz v0, :cond_0

    .line 103
    invoke-static {v1}, Lcom/inmobi/commons/uid/UIDHelper;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/uid/UIDHelper;->getODIN1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v0, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    const-string v3, "O1"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_0
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->e:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->e:Z

    if-eqz v0, :cond_1

    .line 110
    invoke-static {v1}, Lcom/inmobi/commons/uid/UIDHelper;->getFBId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_1

    .line 112
    invoke-static {v0, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    const-string v3, "FBA"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_1
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->f:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->f:Z

    if-eqz v0, :cond_2

    .line 117
    invoke-static {v1}, Lcom/inmobi/commons/uid/UIDHelper;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/uid/UIDHelper;->getUM5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-static {v0, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    const-string v1, "UM5"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->d:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->d:Z

    if-eqz v0, :cond_3

    .line 149
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    sget-object v1, Lcom/inmobi/commons/IMIDType;->ID_LOGIN:Lcom/inmobi/commons/IMIDType;

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/data/UserInfo;->getIDType(Lcom/inmobi/commons/IMIDType;)Ljava/lang/String;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_3

    .line 151
    const-string v1, "LID"

    invoke-static {v0, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_3
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->c:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->c:Z

    if-eqz v0, :cond_4

    .line 155
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    sget-object v1, Lcom/inmobi/commons/IMIDType;->ID_SESSION:Lcom/inmobi/commons/IMIDType;

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/data/UserInfo;->getIDType(Lcom/inmobi/commons/IMIDType;)Ljava/lang/String;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_4

    .line 157
    const-string v1, "SID"

    invoke-static {v0, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_4
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->g:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->g:Z

    if-eqz v0, :cond_5

    .line 163
    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getRawConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getLTVId()Ljava/lang/Long;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_5

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    const-string v1, "LTVID"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_5
    return-object v2

    .line 123
    :cond_6
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_7

    iget-boolean v3, p0, Lcom/inmobi/commons/uid/UID;->b:Z

    if-eqz v3, :cond_7

    sget-object v3, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v3, v3, Lcom/inmobi/commons/uid/UID;->b:Z

    if-eqz v3, :cond_7

    .line 125
    invoke-static {v1}, Lcom/inmobi/commons/uid/UIDHelper;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inmobi/commons/uid/UIDHelper;->getODIN1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-static {v3, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 129
    const-string v4, "O1"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_7
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-eq v3, v4, :cond_8

    iget-boolean v3, p0, Lcom/inmobi/commons/uid/UID;->e:Z

    if-eqz v3, :cond_8

    sget-object v3, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v3, v3, Lcom/inmobi/commons/uid/UID;->e:Z

    if-eqz v3, :cond_8

    .line 133
    invoke-static {v1}, Lcom/inmobi/commons/uid/UIDHelper;->getFBId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 134
    if-eqz v3, :cond_8

    .line 135
    invoke-static {v3, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 136
    const-string v4, "FBA"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_8
    and-int/lit8 v0, v0, 0x8

    const/16 v3, 0x8

    if-eq v0, v3, :cond_2

    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->f:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->f:Z

    if-eqz v0, :cond_2

    .line 141
    invoke-static {v1}, Lcom/inmobi/commons/uid/UIDHelper;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/uid/UIDHelper;->getUM5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v0, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    const-string v1, "UM5"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public static getCommonsUid()Lcom/inmobi/commons/uid/UID;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    return-object v0
.end method


# virtual methods
.method public getDefaultUidMap(ILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/inmobi/commons/uid/UID;->a(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 83
    if-eqz p3, :cond_1

    .line 85
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 86
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 87
    if-eqz v1, :cond_0

    .line 88
    invoke-static {v1, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 92
    :cond_1
    invoke-static {v2}, Lcom/inmobi/commons/uid/UIDUtil;->getEncryptedJSON(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUidMap(ILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 71
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/inmobi/commons/uid/UID;->getDefaultUidMap(ILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    const-string v0, "commons"

    const-string v1, "Unable to initialize commons."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isFba()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->e:Z

    return v0
.end method

.method public isLid()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->d:Z

    return v0
.end method

.method public isLtve()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->g:Z

    return v0
.end method

.method public isO1()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->b:Z

    return v0
.end method

.method public isSid()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->c:Z

    return v0
.end method

.method public isUm5()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->f:Z

    return v0
.end method

.method public final setFromMap(Ljava/util/Map;)V
    .locals 1
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
    .line 190
    const-string v0, "O1"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->b:Z

    .line 191
    const-string v0, "SID"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->c:Z

    .line 192
    const-string v0, "LID"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->d:Z

    .line 193
    const-string v0, "FBA"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->e:Z

    .line 194
    const-string v0, "UM5"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->f:Z

    .line 195
    const-string v0, "LTVID"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->g:Z

    .line 196
    return-void
.end method
