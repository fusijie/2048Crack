.class public Lcom/mdotm/android/utils/MdotMAdSize;
.super Ljava/lang/Object;
.source "MdotMAdSize.java"


# static fields
.field public static BANNER_300_250:Ljava/lang/String;

.field public static BANNER_300_50:Ljava/lang/String;

.field public static BANNER_320_480:Ljava/lang/String;

.field public static BANNER_320_50:Ljava/lang/String;

.field public static BANNER_468_60:Ljava/lang/String;

.field public static BANNER_480_320:Ljava/lang/String;

.field public static BANNER_728_90:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "300,50"

    sput-object v0, Lcom/mdotm/android/utils/MdotMAdSize;->BANNER_300_50:Ljava/lang/String;

    .line 17
    const-string v0, "320,50"

    sput-object v0, Lcom/mdotm/android/utils/MdotMAdSize;->BANNER_320_50:Ljava/lang/String;

    .line 22
    const-string v0, "300,250"

    sput-object v0, Lcom/mdotm/android/utils/MdotMAdSize;->BANNER_300_250:Ljava/lang/String;

    .line 27
    const-string v0, "320,480"

    sput-object v0, Lcom/mdotm/android/utils/MdotMAdSize;->BANNER_320_480:Ljava/lang/String;

    .line 32
    const-string v0, "480,320"

    sput-object v0, Lcom/mdotm/android/utils/MdotMAdSize;->BANNER_480_320:Ljava/lang/String;

    .line 37
    const-string v0, "468,60"

    sput-object v0, Lcom/mdotm/android/utils/MdotMAdSize;->BANNER_468_60:Ljava/lang/String;

    .line 42
    const-string v0, "728,90"

    sput-object v0, Lcom/mdotm/android/utils/MdotMAdSize;->BANNER_728_90:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
