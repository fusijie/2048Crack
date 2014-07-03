.class final Lcom/nextpeer/android/ay$ac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nextpeer/android/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ac"
.end annotation


# instance fields
.field final synthetic a:Lcom/nextpeer/android/ay;


# direct methods
.method private constructor <init>(Lcom/nextpeer/android/ay;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/ay$ac;->a:Lcom/nextpeer/android/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nextpeer/android/ay;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nextpeer/android/ay$ac;-><init>(Lcom/nextpeer/android/ay;)V

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/ay$ac;)Lcom/nextpeer/android/ay;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/ay$ac;->a:Lcom/nextpeer/android/ay;

    return-object v0
.end method


# virtual methods
.method public final accessTokenExtended(Ljava/lang/String;Ljava/util/Date;)V
    .locals 4

    invoke-static {}, Lcom/nextpeer/android/hc;->a()Lcom/nextpeer/android/hc;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd kk:mm:ss ZZ"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/nextpeer/android/hc;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final call(Lcom/nextpeer/android/facebook/Session;Lcom/nextpeer/android/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/nextpeer/android/facebook/Session;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/nextpeer/android/az;

    invoke-direct {v0, p0}, Lcom/nextpeer/android/az;-><init>(Lcom/nextpeer/android/ay$ac;)V

    invoke-static {p1, v0}, Lcom/nextpeer/android/facebook/Request;->newMeRequest(Lcom/nextpeer/android/facebook/Session;Lcom/nextpeer/android/facebook/Request$GraphUserCallback;)Lcom/nextpeer/android/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/Request;->executeAsync()Lcom/nextpeer/android/facebook/RequestAsyncTask;

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_2

    instance-of v0, p3, Lcom/nextpeer/android/facebook/FacebookOperationCanceledException;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nextpeer/android/ay$ac;->a:Lcom/nextpeer/android/ay;

    invoke-static {v0}, Lcom/nextpeer/android/ay;->b(Lcom/nextpeer/android/ay;)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NPFBUserLoginBroker - Failed with exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/ay$ac;->a:Lcom/nextpeer/android/ay;

    invoke-static {v0}, Lcom/nextpeer/android/ay;->a(Lcom/nextpeer/android/ay;)V

    goto :goto_0
.end method
