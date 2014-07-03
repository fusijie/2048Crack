.class Lcom/nextpeer/android/NextpeerPushService$PushServiceConnectivityException;
.super Ljava/lang/Exception;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/NextpeerPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PushServiceConnectivityException"
.end annotation


# instance fields
.field final synthetic a:Lcom/nextpeer/android/NextpeerPushService;


# direct methods
.method private constructor <init>(Lcom/nextpeer/android/NextpeerPushService;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/NextpeerPushService$PushServiceConnectivityException;->a:Lcom/nextpeer/android/NextpeerPushService;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nextpeer/android/NextpeerPushService;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nextpeer/android/NextpeerPushService$PushServiceConnectivityException;-><init>(Lcom/nextpeer/android/NextpeerPushService;)V

    return-void
.end method
