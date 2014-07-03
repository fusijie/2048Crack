.class final Lcom/nextpeer/android/NextpeerPushService$UserSessionListener;
.super Lcom/nextpeer/android/hn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/NextpeerPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserSessionListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/nextpeer/android/NextpeerPushService;


# direct methods
.method private constructor <init>(Lcom/nextpeer/android/NextpeerPushService;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/NextpeerPushService$UserSessionListener;->a:Lcom/nextpeer/android/NextpeerPushService;

    invoke-direct {p0}, Lcom/nextpeer/android/hn;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nextpeer/android/NextpeerPushService;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nextpeer/android/NextpeerPushService$UserSessionListener;-><init>(Lcom/nextpeer/android/NextpeerPushService;)V

    return-void
.end method


# virtual methods
.method public final onFetchUserProfileFailed()V
    .locals 0

    return-void
.end method

.method public final onFetchUserProfileSuccessfully(Lcom/nextpeer/android/hl;)V
    .locals 1

    invoke-virtual {p0}, Lcom/nextpeer/android/NextpeerPushService$UserSessionListener;->unregister()V

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerPushService$UserSessionListener;->a:Lcom/nextpeer/android/NextpeerPushService;

    invoke-static {v0}, Lcom/nextpeer/android/NextpeerPushService;->b(Lcom/nextpeer/android/NextpeerPushService;)V

    return-void
.end method

.method public final register()V
    .locals 1

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nextpeer/android/hh;->a(Lcom/nextpeer/android/hn;)V

    return-void
.end method

.method public final unregister()V
    .locals 2

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/NextpeerPushService$UserSessionListener;->a:Lcom/nextpeer/android/NextpeerPushService;

    invoke-static {v1}, Lcom/nextpeer/android/NextpeerPushService;->c(Lcom/nextpeer/android/NextpeerPushService;)Lcom/nextpeer/android/NextpeerPushService$UserSessionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/hh;->b(Lcom/nextpeer/android/hn;)V

    return-void
.end method
