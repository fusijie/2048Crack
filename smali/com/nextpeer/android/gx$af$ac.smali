.class public final enum Lcom/nextpeer/android/gx$af$ac;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/gx$af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ac"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nextpeer/android/gx$af$ac;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nextpeer/android/gx$af$ac;

.field public static final enum b:Lcom/nextpeer/android/gx$af$ac;

.field public static final enum c:Lcom/nextpeer/android/gx$af$ac;

.field private static final synthetic e:[Lcom/nextpeer/android/gx$af$ac;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lcom/nextpeer/android/gx$af$ac;

    const-string v1, "SUCCESSFUL"

    invoke-direct {v0, v1, v4, v2}, Lcom/nextpeer/android/gx$af$ac;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/gx$af$ac;->a:Lcom/nextpeer/android/gx$af$ac;

    new-instance v0, Lcom/nextpeer/android/gx$af$ac;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v2, v3}, Lcom/nextpeer/android/gx$af$ac;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/gx$af$ac;->b:Lcom/nextpeer/android/gx$af$ac;

    new-instance v0, Lcom/nextpeer/android/gx$af$ac;

    const-string v1, "CANCELLED"

    invoke-direct {v0, v1, v3, v5}, Lcom/nextpeer/android/gx$af$ac;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/gx$af$ac;->c:Lcom/nextpeer/android/gx$af$ac;

    new-array v0, v5, [Lcom/nextpeer/android/gx$af$ac;

    sget-object v1, Lcom/nextpeer/android/gx$af$ac;->a:Lcom/nextpeer/android/gx$af$ac;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nextpeer/android/gx$af$ac;->b:Lcom/nextpeer/android/gx$af$ac;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nextpeer/android/gx$af$ac;->c:Lcom/nextpeer/android/gx$af$ac;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nextpeer/android/gx$af$ac;->e:[Lcom/nextpeer/android/gx$af$ac;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/nextpeer/android/gx$af$ac;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nextpeer/android/gx$af$ac;
    .locals 1

    const-class v0, Lcom/nextpeer/android/gx$af$ac;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/gx$af$ac;

    return-object v0
.end method

.method public static values()[Lcom/nextpeer/android/gx$af$ac;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nextpeer/android/gx$af$ac;->e:[Lcom/nextpeer/android/gx$af$ac;

    array-length v1, v0

    new-array v2, v1, [Lcom/nextpeer/android/gx$af$ac;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/gx$af$ac;->d:I

    return v0
.end method
