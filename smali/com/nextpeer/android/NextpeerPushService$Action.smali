.class final enum Lcom/nextpeer/android/NextpeerPushService$Action;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/NextpeerPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nextpeer/android/NextpeerPushService$Action;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum KEEPALIVE:Lcom/nextpeer/android/NextpeerPushService$Action;

.field public static final enum RECONNECT:Lcom/nextpeer/android/NextpeerPushService$Action;

.field public static final enum START:Lcom/nextpeer/android/NextpeerPushService$Action;

.field public static final enum STOP:Lcom/nextpeer/android/NextpeerPushService$Action;

.field public static final enum UNKNOWN:Lcom/nextpeer/android/NextpeerPushService$Action;

.field private static final synthetic a:[Lcom/nextpeer/android/NextpeerPushService$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nextpeer/android/NextpeerPushService$Action;

    const-string v1, "START"

    invoke-direct {v0, v1, v2}, Lcom/nextpeer/android/NextpeerPushService$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/NextpeerPushService$Action;->START:Lcom/nextpeer/android/NextpeerPushService$Action;

    new-instance v0, Lcom/nextpeer/android/NextpeerPushService$Action;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v3}, Lcom/nextpeer/android/NextpeerPushService$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/NextpeerPushService$Action;->STOP:Lcom/nextpeer/android/NextpeerPushService$Action;

    new-instance v0, Lcom/nextpeer/android/NextpeerPushService$Action;

    const-string v1, "KEEPALIVE"

    invoke-direct {v0, v1, v4}, Lcom/nextpeer/android/NextpeerPushService$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/NextpeerPushService$Action;->KEEPALIVE:Lcom/nextpeer/android/NextpeerPushService$Action;

    new-instance v0, Lcom/nextpeer/android/NextpeerPushService$Action;

    const-string v1, "RECONNECT"

    invoke-direct {v0, v1, v5}, Lcom/nextpeer/android/NextpeerPushService$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/NextpeerPushService$Action;->RECONNECT:Lcom/nextpeer/android/NextpeerPushService$Action;

    new-instance v0, Lcom/nextpeer/android/NextpeerPushService$Action;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/nextpeer/android/NextpeerPushService$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/NextpeerPushService$Action;->UNKNOWN:Lcom/nextpeer/android/NextpeerPushService$Action;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nextpeer/android/NextpeerPushService$Action;

    sget-object v1, Lcom/nextpeer/android/NextpeerPushService$Action;->START:Lcom/nextpeer/android/NextpeerPushService$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nextpeer/android/NextpeerPushService$Action;->STOP:Lcom/nextpeer/android/NextpeerPushService$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nextpeer/android/NextpeerPushService$Action;->KEEPALIVE:Lcom/nextpeer/android/NextpeerPushService$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nextpeer/android/NextpeerPushService$Action;->RECONNECT:Lcom/nextpeer/android/NextpeerPushService$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nextpeer/android/NextpeerPushService$Action;->UNKNOWN:Lcom/nextpeer/android/NextpeerPushService$Action;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nextpeer/android/NextpeerPushService$Action;->a:[Lcom/nextpeer/android/NextpeerPushService$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getByName(Ljava/lang/String;)Lcom/nextpeer/android/NextpeerPushService$Action;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/nextpeer/android/NextpeerPushService$Action;->valueOf(Ljava/lang/String;)Lcom/nextpeer/android/NextpeerPushService$Action;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/nextpeer/android/NextpeerPushService$Action;->UNKNOWN:Lcom/nextpeer/android/NextpeerPushService$Action;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nextpeer/android/NextpeerPushService$Action;
    .locals 1

    const-class v0, Lcom/nextpeer/android/NextpeerPushService$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/NextpeerPushService$Action;

    return-object v0
.end method

.method public static values()[Lcom/nextpeer/android/NextpeerPushService$Action;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nextpeer/android/NextpeerPushService$Action;->a:[Lcom/nextpeer/android/NextpeerPushService$Action;

    array-length v1, v0

    new-array v2, v1, [Lcom/nextpeer/android/NextpeerPushService$Action;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
