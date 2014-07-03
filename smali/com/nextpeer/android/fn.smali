.class Lcom/nextpeer/android/fn;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Landroid/widget/PopupWindow;

.field protected c:Landroid/view/View;

.field protected d:Landroid/graphics/drawable/Drawable;

.field protected e:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/fn;->d:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/nextpeer/android/fn;->a:Landroid/content/Context;

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nextpeer/android/fn;->b:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/nextpeer/android/fn;->b:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/nextpeer/android/fo;

    invoke-direct {v1, p0}, Lcom/nextpeer/android/fo;-><init>(Lcom/nextpeer/android/fn;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/nextpeer/android/fn;->e:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 5

    const/4 v4, -0x2

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/nextpeer/android/fn;->c:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setContentView was not called with a view to display."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/fn;->d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/fn;->b:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/nextpeer/android/fn;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v0, p0, Lcom/nextpeer/android/fn;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/nextpeer/android/fn;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/nextpeer/android/fn;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v0, p0, Lcom/nextpeer/android/fn;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/nextpeer/android/fn;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/nextpeer/android/fn;->b:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/nextpeer/android/fn;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/fn;->b:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/nextpeer/android/fn;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/nextpeer/android/fn;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/nextpeer/android/fn;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/fn;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method protected onDismiss()V
    .locals 0

    return-void
.end method
