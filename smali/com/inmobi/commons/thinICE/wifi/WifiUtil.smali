.class public final Lcom/inmobi/commons/thinICE/wifi/WifiUtil;
.super Ljava/lang/Object;
.source "WifiUtil.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    aput-object v1, v0, v2

    sput-object v0, Lcom/inmobi/commons/thinICE/wifi/WifiUtil;->a:[Ljava/lang/String;

    .line 89
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    aput-object v1, v0, v2

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    aput-object v1, v0, v3

    sput-object v0, Lcom/inmobi/commons/thinICE/wifi/WifiUtil;->b:[Ljava/lang/String;

    .line 94
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.WAKE_LOCK"

    aput-object v1, v0, v2

    sput-object v0, Lcom/inmobi/commons/thinICE/wifi/WifiUtil;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(B)J
    .locals 4
    .parameter

    .prologue
    .line 208
    int-to-long v0, p0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static a([B)J
    .locals 5
    .parameter

    .prologue
    .line 193
    const-wide/16 v0, 0x0

    .line 194
    if-eqz p0, :cond_0

    .line 195
    array-length v2, p0

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 196
    const/4 v0, 0x5

    aget-byte v0, p0, v0

    invoke-static {v0}, Lcom/inmobi/commons/thinICE/wifi/WifiUtil;->a(B)J

    move-result-wide v0

    .line 197
    const/4 v2, 0x4

    aget-byte v2, p0, v2

    invoke-static {v2}, Lcom/inmobi/commons/thinICE/wifi/WifiUtil;->a(B)J

    move-result-wide v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 198
    const/4 v2, 0x3

    aget-byte v2, p0, v2

    invoke-static {v2}, Lcom/inmobi/commons/thinICE/wifi/WifiUtil;->a(B)J

    move-result-wide v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 199
    const/4 v2, 0x2

    aget-byte v2, p0, v2

    invoke-static {v2}, Lcom/inmobi/commons/thinICE/wifi/WifiUtil;->a(B)J

    move-result-wide v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 200
    const/4 v2, 0x1

    aget-byte v2, p0, v2

    invoke-static {v2}, Lcom/inmobi/commons/thinICE/wifi/WifiUtil;->a(B)J

    move-result-wide v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 201
    const/4 v2, 0x0

    aget-byte v2, p0, v2

    invoke-static {v2}, Lcom/inmobi/commons/thinICE/wifi/WifiUtil;->a(B)J

    move-result-wide v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 204
    :cond_0
    return-wide v0
.end method

.method private static a(ZLjava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 151
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "_nomap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getConnectedWifiInfo(Landroid/content/Context;)Lcom/inmobi/commons/thinICE/wifi/WifiInfo;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 60
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->getConfig()Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->getWifiFlags()I

    move-result v2

    .line 61
    const/4 v0, 0x2

    invoke-static {v2, v0}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->bitTest(II)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 62
    :goto_0
    invoke-static {v2, v1}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->bitTest(II)Z

    move-result v1

    .line 63
    invoke-static {p0, v0, v1}, Lcom/inmobi/commons/thinICE/wifi/WifiUtil;->getConnectedWifiInfo(Landroid/content/Context;ZZ)Lcom/inmobi/commons/thinICE/wifi/WifiInfo;

    move-result-object v0

    return-object v0

    .line 61
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getConnectedWifiInfo(Landroid/content/Context;ZZ)Lcom/inmobi/commons/thinICE/wifi/WifiInfo;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 38
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 40
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 41
    if-nez v3, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-object v1

    .line 43
    :cond_1
    new-instance v2, Lcom/inmobi/commons/thinICE/wifi/WifiInfo;

    invoke-direct {v2}, Lcom/inmobi/commons/thinICE/wifi/WifiInfo;-><init>()V

    .line 44
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    .line 45
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 46
    if-eqz v4, :cond_0

    .line 47
    invoke-static {p1, v0}, Lcom/inmobi/commons/thinICE/wifi/WifiUtil;->a(ZLjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 48
    invoke-static {v4}, Lcom/inmobi/commons/thinICE/wifi/WifiUtil;->macToLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/inmobi/commons/thinICE/wifi/WifiInfo;->bssid:J

    .line 49
    if-eqz p2, :cond_2

    move-object v0, v1

    :cond_2
    iput-object v0, v2, Lcom/inmobi/commons/thinICE/wifi/WifiInfo;->ssid:Ljava/lang/String;

    .line 50
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    iput v0, v2, Lcom/inmobi/commons/thinICE/wifi/WifiInfo;->rssi:I

    .line 51
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    iput v0, v2, Lcom/inmobi/commons/thinICE/wifi/WifiInfo;->ip:I

    move-object v1, v2

    .line 52
    goto :goto_0
.end method

.method public static hasGetConnectedWifiInfoPermission(Landroid/content/Context;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 81
    sget-object v2, Lcom/inmobi/commons/thinICE/wifi/WifiUtil;->a:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 82
    invoke-virtual {p0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 86
    :goto_1
    return v0

    .line 81
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static hasWifiScanPermission(Landroid/content/Context;Z)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 114
    sget-object v2, Lcom/inmobi/commons/thinICE/wifi/WifiUtil;->b:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 115
    invoke-virtual {p0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 126
    :cond_0
    :goto_1
    return v0

    .line 114
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_2
    if-eqz p1, :cond_3

    .line 120
    sget-object v2, Lcom/inmobi/commons/thinICE/wifi/WifiUtil;->c:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    .line 121
    invoke-virtual {p0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 126
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static macToLong(Ljava/lang/String;)J
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x6

    .line 184
    const-string v0, "\\:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 185
    new-array v2, v5, [B

    .line 186
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    .line 187
    aget-object v3, v1, v0

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_0
    invoke-static {v2}, Lcom/inmobi/commons/thinICE/wifi/WifiUtil;->a([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public static scanResultToWifiInfo(Landroid/net/wifi/ScanResult;Z)Lcom/inmobi/commons/thinICE/wifi/WifiInfo;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 162
    if-nez p0, :cond_0

    .line 167
    :goto_0
    return-object v0

    .line 163
    :cond_0
    new-instance v1, Lcom/inmobi/commons/thinICE/wifi/WifiInfo;

    invoke-direct {v1}, Lcom/inmobi/commons/thinICE/wifi/WifiInfo;-><init>()V

    .line 164
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v2}, Lcom/inmobi/commons/thinICE/wifi/WifiUtil;->macToLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/inmobi/commons/thinICE/wifi/WifiInfo;->bssid:J

    .line 165
    if-eqz p1, :cond_1

    :goto_1
    iput-object v0, v1, Lcom/inmobi/commons/thinICE/wifi/WifiInfo;->ssid:Ljava/lang/String;

    .line 166
    iget v0, p0, Landroid/net/wifi/ScanResult;->level:I

    iput v0, v1, Lcom/inmobi/commons/thinICE/wifi/WifiInfo;->rssi:I

    move-object v0, v1

    .line 167
    goto :goto_0

    .line 165
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_1
.end method

.method public static scanResultsToWifiInfos(Ljava/util/List;ZZ)Ljava/util/List;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;ZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/commons/thinICE/wifi/WifiInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 147
    :goto_0
    return-object v0

    .line 142
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 143
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 144
    iget-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/inmobi/commons/thinICE/wifi/WifiUtil;->a(ZLjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 145
    invoke-static {v0, p2}, Lcom/inmobi/commons/thinICE/wifi/WifiUtil;->scanResultToWifiInfo(Landroid/net/wifi/ScanResult;Z)Lcom/inmobi/commons/thinICE/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 147
    goto :goto_0
.end method
