.class final Lcom/nextpeer/android/ez;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/ex;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/ex;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/ez;->a:Lcom/nextpeer/android/ex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/ez;->a:Lcom/nextpeer/android/ex;

    invoke-static {v0}, Lcom/nextpeer/android/ex;->d(Lcom/nextpeer/android/ex;)Lcom/nextpeer/android/ex$af;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "NPA_INVITE_FB_FRIENDS_TAPPED_INVITE_FRIENDS"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/ez;->a:Lcom/nextpeer/android/ex;

    invoke-static {v0}, Lcom/nextpeer/android/ex;->d(Lcom/nextpeer/android/ex;)Lcom/nextpeer/android/ex$af;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/ez;->a:Lcom/nextpeer/android/ex;

    invoke-static {v1}, Lcom/nextpeer/android/ex;->b(Lcom/nextpeer/android/ex;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nextpeer/android/ex$af;->a(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/nextpeer/android/ez;->a:Lcom/nextpeer/android/ex;

    sget-object v1, Lcom/nextpeer/android/ex$ae;->g:Lcom/nextpeer/android/ex$ae;

    invoke-static {v0, v1}, Lcom/nextpeer/android/ex;->a(Lcom/nextpeer/android/ex;Lcom/nextpeer/android/ex$ae;)V

    :cond_0
    return-void
.end method
