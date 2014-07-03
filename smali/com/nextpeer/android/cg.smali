.class final Lcom/nextpeer/android/cg;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/cf;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/cf;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/cg;->a:Lcom/nextpeer/android/cf;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Lcom/nextpeer/android/cp;

    invoke-direct {v0}, Lcom/nextpeer/android/cp;-><init>()V

    sget-object v1, Lcom/nextpeer/android/ck;->A:Lcom/nextpeer/android/ck;

    invoke-virtual {v1}, Lcom/nextpeer/android/ck;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/cp;->a(I)V

    iget-object v1, p0, Lcom/nextpeer/android/cg;->a:Lcom/nextpeer/android/cf;

    invoke-static {v1, v0}, Lcom/nextpeer/android/cf;->a(Lcom/nextpeer/android/cf;Lcom/nextpeer/android/cm;)V

    return-void
.end method
