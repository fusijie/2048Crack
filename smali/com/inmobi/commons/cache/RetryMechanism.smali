.class public Lcom/inmobi/commons/cache/RetryMechanism;
.super Ljava/lang/Object;
.source "RetryMechanism.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/cache/RetryMechanism$RetryRunnable;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Timer;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(IILjava/util/Timer;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, Lcom/inmobi/commons/cache/RetryMechanism;->b:I

    .line 19
    iput v0, p0, Lcom/inmobi/commons/cache/RetryMechanism;->c:I

    .line 20
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/inmobi/commons/cache/RetryMechanism;->d:I

    .line 23
    iput p1, p0, Lcom/inmobi/commons/cache/RetryMechanism;->c:I

    .line 24
    iput p2, p0, Lcom/inmobi/commons/cache/RetryMechanism;->d:I

    .line 25
    iput-object p3, p0, Lcom/inmobi/commons/cache/RetryMechanism;->a:Ljava/util/Timer;

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/inmobi/commons/cache/RetryMechanism;)I
    .locals 2
    .parameter

    .prologue
    .line 9
    iget v0, p0, Lcom/inmobi/commons/cache/RetryMechanism;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/inmobi/commons/cache/RetryMechanism;->b:I

    return v0
.end method

.method private a(Lcom/inmobi/commons/cache/RetryMechanism$RetryRunnable;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/inmobi/commons/cache/RetryMechanism;->a:Ljava/util/Timer;

    new-instance v1, Lcom/inmobi/commons/cache/RetryMechanism$a;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/commons/cache/RetryMechanism$a;-><init>(Lcom/inmobi/commons/cache/RetryMechanism;Lcom/inmobi/commons/cache/RetryMechanism$RetryRunnable;)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/inmobi/commons/cache/RetryMechanism;Lcom/inmobi/commons/cache/RetryMechanism$RetryRunnable;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/inmobi/commons/cache/RetryMechanism;->a(Lcom/inmobi/commons/cache/RetryMechanism$RetryRunnable;I)V

    return-void
.end method

.method static synthetic b(Lcom/inmobi/commons/cache/RetryMechanism;)I
    .locals 1
    .parameter

    .prologue
    .line 9
    iget v0, p0, Lcom/inmobi/commons/cache/RetryMechanism;->b:I

    return v0
.end method

.method static synthetic c(Lcom/inmobi/commons/cache/RetryMechanism;)I
    .locals 1
    .parameter

    .prologue
    .line 9
    iget v0, p0, Lcom/inmobi/commons/cache/RetryMechanism;->c:I

    return v0
.end method

.method static synthetic d(Lcom/inmobi/commons/cache/RetryMechanism;)I
    .locals 1
    .parameter

    .prologue
    .line 9
    iget v0, p0, Lcom/inmobi/commons/cache/RetryMechanism;->d:I

    return v0
.end method


# virtual methods
.method public rescheduleTimer(Lcom/inmobi/commons/cache/RetryMechanism$RetryRunnable;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/inmobi/commons/cache/RetryMechanism;->b:I

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/inmobi/commons/cache/RetryMechanism;->a(Lcom/inmobi/commons/cache/RetryMechanism$RetryRunnable;I)V

    .line 31
    return-void
.end method
