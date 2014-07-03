.class public final enum Lcom/nextpeer/android/facebook/LoggingBehavior;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nextpeer/android/facebook/LoggingBehavior;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APP_EVENTS:Lcom/nextpeer/android/facebook/LoggingBehavior;

.field public static final enum CACHE:Lcom/nextpeer/android/facebook/LoggingBehavior;

.field public static final enum DEVELOPER_ERRORS:Lcom/nextpeer/android/facebook/LoggingBehavior;

.field private static final synthetic ENUM$VALUES:[Lcom/nextpeer/android/facebook/LoggingBehavior;

.field public static final enum INCLUDE_ACCESS_TOKENS:Lcom/nextpeer/android/facebook/LoggingBehavior;

.field public static final enum INCLUDE_RAW_RESPONSES:Lcom/nextpeer/android/facebook/LoggingBehavior;

.field public static final INSIGHTS:Lcom/nextpeer/android/facebook/LoggingBehavior;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum REQUESTS:Lcom/nextpeer/android/facebook/LoggingBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/nextpeer/android/facebook/LoggingBehavior;

    const-string v1, "REQUESTS"

    invoke-direct {v0, v1, v3}, Lcom/nextpeer/android/facebook/LoggingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/facebook/LoggingBehavior;->REQUESTS:Lcom/nextpeer/android/facebook/LoggingBehavior;

    new-instance v0, Lcom/nextpeer/android/facebook/LoggingBehavior;

    const-string v1, "INCLUDE_ACCESS_TOKENS"

    invoke-direct {v0, v1, v4}, Lcom/nextpeer/android/facebook/LoggingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/facebook/LoggingBehavior;->INCLUDE_ACCESS_TOKENS:Lcom/nextpeer/android/facebook/LoggingBehavior;

    new-instance v0, Lcom/nextpeer/android/facebook/LoggingBehavior;

    const-string v1, "INCLUDE_RAW_RESPONSES"

    invoke-direct {v0, v1, v5}, Lcom/nextpeer/android/facebook/LoggingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/facebook/LoggingBehavior;->INCLUDE_RAW_RESPONSES:Lcom/nextpeer/android/facebook/LoggingBehavior;

    new-instance v0, Lcom/nextpeer/android/facebook/LoggingBehavior;

    const-string v1, "CACHE"

    invoke-direct {v0, v1, v6}, Lcom/nextpeer/android/facebook/LoggingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/facebook/LoggingBehavior;->CACHE:Lcom/nextpeer/android/facebook/LoggingBehavior;

    new-instance v0, Lcom/nextpeer/android/facebook/LoggingBehavior;

    const-string v1, "APP_EVENTS"

    invoke-direct {v0, v1, v7}, Lcom/nextpeer/android/facebook/LoggingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/facebook/LoggingBehavior;->APP_EVENTS:Lcom/nextpeer/android/facebook/LoggingBehavior;

    new-instance v0, Lcom/nextpeer/android/facebook/LoggingBehavior;

    const-string v1, "DEVELOPER_ERRORS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nextpeer/android/facebook/LoggingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/nextpeer/android/facebook/LoggingBehavior;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nextpeer/android/facebook/LoggingBehavior;

    sget-object v1, Lcom/nextpeer/android/facebook/LoggingBehavior;->REQUESTS:Lcom/nextpeer/android/facebook/LoggingBehavior;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nextpeer/android/facebook/LoggingBehavior;->INCLUDE_ACCESS_TOKENS:Lcom/nextpeer/android/facebook/LoggingBehavior;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nextpeer/android/facebook/LoggingBehavior;->INCLUDE_RAW_RESPONSES:Lcom/nextpeer/android/facebook/LoggingBehavior;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nextpeer/android/facebook/LoggingBehavior;->CACHE:Lcom/nextpeer/android/facebook/LoggingBehavior;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nextpeer/android/facebook/LoggingBehavior;->APP_EVENTS:Lcom/nextpeer/android/facebook/LoggingBehavior;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nextpeer/android/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/nextpeer/android/facebook/LoggingBehavior;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nextpeer/android/facebook/LoggingBehavior;->ENUM$VALUES:[Lcom/nextpeer/android/facebook/LoggingBehavior;

    sget-object v0, Lcom/nextpeer/android/facebook/LoggingBehavior;->APP_EVENTS:Lcom/nextpeer/android/facebook/LoggingBehavior;

    sput-object v0, Lcom/nextpeer/android/facebook/LoggingBehavior;->INSIGHTS:Lcom/nextpeer/android/facebook/LoggingBehavior;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nextpeer/android/facebook/LoggingBehavior;
    .locals 1

    const-class v0, Lcom/nextpeer/android/facebook/LoggingBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/facebook/LoggingBehavior;

    return-object v0
.end method

.method public static values()[Lcom/nextpeer/android/facebook/LoggingBehavior;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nextpeer/android/facebook/LoggingBehavior;->ENUM$VALUES:[Lcom/nextpeer/android/facebook/LoggingBehavior;

    array-length v1, v0

    new-array v2, v1, [Lcom/nextpeer/android/facebook/LoggingBehavior;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
