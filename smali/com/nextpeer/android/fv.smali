.class final Lcom/nextpeer/android/fv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/fu;

.field private final synthetic b:I

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/nextpeer/android/fu;II)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/fv;->a:Lcom/nextpeer/android/fu;

    iput p2, p0, Lcom/nextpeer/android/fv;->b:I

    iput p3, p0, Lcom/nextpeer/android/fv;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/nextpeer/android/fv;->a:Lcom/nextpeer/android/fu;

    invoke-static {v0}, Lcom/nextpeer/android/fu;->a(Lcom/nextpeer/android/fu;)Lcom/nextpeer/android/fu$aa;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/fv;->a:Lcom/nextpeer/android/fu;

    invoke-static {v0}, Lcom/nextpeer/android/fu;->a(Lcom/nextpeer/android/fu;)Lcom/nextpeer/android/fu$aa;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/fv;->a:Lcom/nextpeer/android/fu;

    iget v1, p0, Lcom/nextpeer/android/fv;->b:I

    iget v2, p0, Lcom/nextpeer/android/fv;->c:I

    invoke-interface {v0, v1, v2}, Lcom/nextpeer/android/fu$aa;->a(II)V

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/fv;->a:Lcom/nextpeer/android/fu;

    iget v1, p0, Lcom/nextpeer/android/fv;->b:I

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/fu;->a(I)Lcom/nextpeer/android/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/dy;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/fv;->a:Lcom/nextpeer/android/fu;

    invoke-static {v0}, Lcom/nextpeer/android/fu;->b(Lcom/nextpeer/android/fu;)V

    iget-object v0, p0, Lcom/nextpeer/android/fv;->a:Lcom/nextpeer/android/fu;

    invoke-virtual {v0}, Lcom/nextpeer/android/fu;->b()V

    :cond_1
    return-void
.end method
