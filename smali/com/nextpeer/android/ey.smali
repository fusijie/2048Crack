.class final Lcom/nextpeer/android/ey;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/ex;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/ex;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/ey;->a:Lcom/nextpeer/android/ex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/ey;->a:Lcom/nextpeer/android/ex;

    invoke-static {v0}, Lcom/nextpeer/android/ex;->d(Lcom/nextpeer/android/ex;)Lcom/nextpeer/android/ex$af;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/ey;->a:Lcom/nextpeer/android/ex;

    invoke-static {v0}, Lcom/nextpeer/android/ex;->d(Lcom/nextpeer/android/ex;)Lcom/nextpeer/android/ex$af;

    move-result-object v0

    invoke-interface {v0}, Lcom/nextpeer/android/ex$af;->w()V

    :cond_0
    return-void
.end method
