import com.github.davidmoten.rtree.RTree;
import com.github.davidmoten.rtree.geometry.Geometry;
import static com.github.davidmoten.rtree.geometry.Geometries.*;

public class Main {

	public static void main(String[] args) {
		
		// create an R-tree using Quadratic split with max
		// children per node 4, min children 2 (the threshold
		// at which members are redistributed)
		RTree<Integer, Geometry> r = RTree.maxChildren(4).create();
		
//		r = r.add("1", rectangle(10, 20, 30, 23))
//		     .add("2", rectangle(12, 25, 40, 60))
//		     .add("3", rectangle(97, 125, 110, 140))
//		     .add("4", rectangle(90, 10, 105, 23))
//		     .add("5", rectangle(40, 10, 70, 28))
//		     .add("6", rectangle(30, 10, 40, 23));
		r = r.add(1, rectangle(0, 0, 10, 15))
			 .add(3, rectangle(12, 4, 20, 15))
			 .add(4, rectangle(20, 46, 24, 61))
			 .add(2, rectangle(90, 90, 95, 100))
			 .add(5, rectangle(80, 80, 86, 89));
//			 .add(6, rectangle(40, 40, 60, 66));
		
		r.visualize(700,800).save("target/r01.png");
		
		
		// create an R*-tree with max childring 4 and fill ratio of 0.4
		// (yielding best performance, as described by [Beckmann, et.al 1990]
		RTree<Integer, Geometry> rstar = RTree.star().maxChildren(4).create();
		
		rstar = rstar.add(1, rectangle(0, 0, 10, 15))
					 .add(3, rectangle(12, 4, 20, 15))
					 .add(4, rectangle(20, 46, 24, 61))
					 .add(2, rectangle(90, 90, 95, 100))
					 .add(5, rectangle(80, 80, 86, 89))
					 .add(6, rectangle(40, 40, 60, 66));
		
		rstar.visualize(700,800).save("target/rstar01.png");
		
		rstar = rstar.add(7, rectangle(70, 60, 84, 70));
		
		rstar.visualize(700,800).save("target/rstar02.png");
	}

}
