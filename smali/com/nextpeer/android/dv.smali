.class final Lcom/nextpeer/android/dv;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/dr;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/dr;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/dv;->a:Lcom/nextpeer/android/dr;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dv;->a:Lcom/nextpeer/android/dr;

    invoke-virtual {v0}, Lcom/nextpeer/android/dr;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/dv;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->a(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/cf;->b()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/dv;->a:Lcom/nextpeer/android/dr;

    invoke-static {v0}, Lcom/nextpeer/android/dr;->p(Lcom/nextpeer/android/dr;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_0
.end method
