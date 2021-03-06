
InaSAFE Options
===============

The |project_name| plugin provides an options dialog which allows you to 
define various options relating to how InaSAFE will behave. The
options dialog can be launched by clicking on the InaSAFE plugin toolbar's
options icon (as shown below) or by doing :menuselection:`Plugins --> InaSAFE
--> InaSAFE Options`.

.. figure:: ../../inasafe-options-icon.png
   :align:   center

Then the dialog will appear, looking something like this:

.. figure:: ../../inasafe-options-dialog.png
   :align:   center

.. note:: You can click on the :guilabel:`Help` button at any time and it 
   will open the help documentation browser to this page.

The following options are available on the :guilabel:`Options Dialog`:

* :guilabel:`Only show visible layers in the InaSAFE dock` : This option will
  determine whether **all** (when unchecked) hazard and impact layers should
  be listed in the InaSAFE dock's combo boxes. or (when checked) only visible
  layers.
* :guilabel:`Set QGIS layer name from 'title' in keywords` : This option will
  (when enabled) cause QGIS to name layers in the :guilabel:`Layers tree`
  using the `title` keyword in the layer's keywords file. If the layer
  has no 'title' in its keywords, or it has no keywords at all, the normal
  QGIS behaviour for naming layers will apply.
* :guilabel:`Zoom to impact layer on scenario estimate completion` : This
  option will cause the map view to zoom in/out in order to completely contain
  the InaSAFE impact scenario map output when an analysis completes.
* :guilabel:`Hide exposure layer on scenario estimate completion` : This
  option will cause QGIS to turn off the exposure layer used when InaSAFE
  completes the current analysis. You can re-enable the layer visibility
  again by checking its checkbox in the legend.
* :guilabel:`Keyword cache for remote datasources` : This option is used to
  determine where keywords are stored for datasets where it is not possible
  to write them into a .keywords file. See :doc:`keywords` for more information
  on the keywords system.
* :guilabel:`Run analysis in separate thread (experimental)` : This option
  cause the analysis to be run in its own thread.

.. warning:: It is not recommended to use the threaded implementation at this
   time. For this reason it is disabled by default.

Pressing :guilabel:`Cancel` at any time will close the options dialog and any
changes made will **not** be applied.

Pressing :guilabel:`Ok` at any time will close the options dialog and any
changes made **will** be applied immediately.

.. note:: The exact button order shown on this dialog may differ depending on
   your operating system or desktop environment.