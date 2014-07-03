.class final Lcom/nextpeer/android/NextpeerPushService$UserRegistrationListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nextpeer/android/hc$ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/NextpeerPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserRegistrationListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/nextpeer/android/NextpeerPushService;


# direct methods
.method private constructor <init>(Lcom/nextpeer/android/NextpeerPushService;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/NextpeerPushService$UserRegistrationListener;->a:Lcom/nextpeer/android/NextpeerPushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nextpeer/android/NextpeerPushService;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nextpeer/android/NextpeerPushService$UserRegistrationListener;-><init>(Lcom/nextpeer/android/NextpeerPushService;)V

    return-void
.end method


# virtual methods
.method public final onRegisterUserFailed()V
    .locals 0

    return-void
.end method

.method public final onRegisterUserSuccessfully(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p0}, Lcom/nextpeer/android/NextpeerPushService$UserRegistrationListener;->unregister()V

    iget-object v0, p0, Lcom/nextpeer/android/NextpeerPushService$UserRegistrationListener;->a:Lcom/nextpeer/android/NextpeerPushService;

    invoke-static {v0}, Lcom/nextpeer/android/NextpeerPushService;->b(Lcom/nextpeer/android/NextpeerPushService;)V

    return-void
.end method

.method public final register()V
    .locals 1

    invoke-static {}, Lcom/nextpeer/android/hc;->a()Lcom/nextpeer/android/hc;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/nextpeer/android/hc;->a(Lcom/nextpeer/android/hc$ab;)V

    :cond_0
    return-void
.end method

.method public final unregister()V
    .locals 2

    invoke-static {}, Lcom/nextpeer/android/hc;->a()Lcom/nextpeer/android/hc;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/NextpeerPushService$UserRegistrationListener;->a:Lcom/nextpeer/android/NextpeerPushService;

    invoke-static {v1}, Lcom/nextpeer/android/NextpeerPushService;->a(Lcom/nextpeer/android/NextpeerPushService;)Lcom/nextpeer/android/NextpeerPushService$UserRegistrationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/hc;->b(Lcom/nextpeer/android/hc$ab;)V

    return-void
.end method
