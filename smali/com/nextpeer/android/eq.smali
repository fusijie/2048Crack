.class final Lcom/nextpeer/android/eq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/eo;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/eo;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/eq;->a:Lcom/nextpeer/android/eo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "NPA_HOME_TAPPED_PLAY_RANDOM"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/eq;->a:Lcom/nextpeer/android/eo;

    invoke-static {v0}, Lcom/nextpeer/android/eo;->a(Lcom/nextpeer/android/eo;)Lcom/nextpeer/android/eo$aa;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/eq;->a:Lcom/nextpeer/android/eo;

    invoke-static {v0}, Lcom/nextpeer/android/eo;->a(Lcom/nextpeer/android/eo;)Lcom/nextpeer/android/eo$aa;

    move-result-object v0

    invoke-interface {v0}, Lcom/nextpeer/android/eo$aa;->g()V

    :cond_0
    return-void
.end method
